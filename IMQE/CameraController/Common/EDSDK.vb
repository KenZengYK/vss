'/******************************************************************************
'*                                                                             *
'*   PROJECT : EOS Digital Software Development Kit EDSDK                      *
'*      NAME : EDSDK.h                                                         *
'*                                                                             *
'*   Description: PROTO TYPE DEFINITION OF EDSDK API                           *
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
'*   06-03-08    F-001        create first version.                            *
'*                                                                             *
'******************************************************************************/
'Option Strict Off
Option Explicit On 

Imports System.Runtime.InteropServices

Public Module EDSDK

    '===================================================
    '
    ' EDSDK.h
    '
    '===================================================

    '/******************************************************************************
    '*******************************************************************************
    '//
    '//  initialize / terminate   
    '//  初始化/终止
    '//
    '*******************************************************************************
    '******************************************************************************/
 
    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsInitializeSDK
    '//
    '//  Description:
    '//      Initializes the libraries. 
    '//      When using the EDSDK libraries, you must call this API once  
    '//          before using EDSDK APIs.
    '//
    '//  Parameters:
    '//       In:    None
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsInitializeSDK
    '//
    '//说明：
    '//初始化库。
    '//使用EDSDK库时，你必须调用一次这个API
    '//使用EDSDK的API前。
    '//
    '//参数：
    '//In:无
    '//Out:无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsInitializeSDK Lib "EDSDK" () As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsTerminateSDK
    '//
    '//  Description:
    '//      Terminates use of the libraries. 
    '//      This function muse be called when ending the SDK.
    '//      Calling this function releases all resources allocated by the libraries.
    '//
    '//  Parameters:
    '//       In:    None
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsTerminateSDK
    '//
    '//说明：
    '//终止使用的库。
    '//这个函数必须被调用在结束使用SDK时。
    '//调用这个函数释放分配的所有资源库。
    '//
    '//参数：
    '//In:无
    '//Out:无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsTerminateSDK Lib "EDSDK" () As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '//  reference counter
    '//  引用计数器
    '//
    '*******************************************************************************
    '******************************************************************************/

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsRetain
    '//
    '//  Description:
    '//     Increment the reference counter of the item.
    '//
    '//  Parameters:
    '//       In:   inRef - The reference for the item.
    '//      Out:   None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsRetain
    '//
    '//说明：
    '//增加该项目的参考计数器。
    '//
    '//参数：
    '//In:inRef - 该项目的参考。
    '//Out:无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsRetain Lib "EDSDK" (ByVal inRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsRelease
    '//
    '//  Description:
    '//     Decrement the reference counter of the item.
    '//     The item is not deleted until a reference counter is set to 0.
    '//
    '//  Parameters:
    '//       In:   inRef - The reference of the item.
    '//      Out:   None
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsRelease
    '//
    '//说明：
    '//该项目的参考计数器递减。
    '//该项目是不会被删除，直到一个引用计数器设置为0。
    '//
    '//参数：
    '// In：inRef - 该项目的参考。
    '// Out：无
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsRelease Lib "EDSDK" (ByVal inRef As IntPtr) As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '//  item tree 
    '//  项目树
    '//
    '*******************************************************************************
    '******************************************************************************/


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetChildCount
    '//
    '//  Description:
    '//      Gets the number of child objects of the designated object.
    '//      Example: Number of files in a directory
    '//
    '//  Parameters:
    '//       In:    inRef - The reference of the list.
    '//      Out:    outCount - Number of elements in this list.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetChildCount
    '//
    '//说明：
    '//获取指定对象的子对象的数目。
    '//例：一个文件夹中的文件个数
    '//
    '//参数：
    '//：inRef - 列表中的参考。
    '//：outCount - 在此列表中的元素数目。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetChildCount Lib "EDSDK" ( _
        ByVal inCameraListRef As IntPtr, _
        ByRef outCount As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetChildAtIndex
    '//
    '//  Description:
    '//       Gets an indexed child object of the designated object. 
    '//
    '//  Parameters:
    '//       In:    inRef - The reference of the item.
    '//              inIndex -  The index that is passed in, is zero based.
    '//      Out:    outRef - The pointer which receives reference of the 
    '//                           specified index .
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetChildAtIndex
    '//
    '//说明：
    '//获取指定对象的索引子对象。
    '//
    '//参数：
    '//In: inRef - 该项目的参考。
    '//    inIndex - 传递的指数，是从零开始。
    '//Out: outRef - 接收的参考指针指定的索引。
    '//
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetChildAtIndex Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByVal inIndex As Integer, _
        ByRef outRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetParent
    '//
    '//  Description:
    '//      Gets the parent object of the designated object.
    '//
    '//  Parameters:
    '//       In:    inRef        - The reference of the item.
    '//      Out:    outParentRef - The pointer which receives reference.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetParent
    '//
    '//说明：
    '//获取指定对象的父对象。
    '//
    '//参数：
    '//In：inRef - 该项目的参考。
    '//Out：outParentRef - 接收参考的指针。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetParent Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByRef outParentRef As IntPtr) As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '//  property 
    '//  属性
    '//
    '*******************************************************************************
    '******************************************************************************/


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetPropertySize
    '//
    '//  Description:
    '//      Gets the byte size and data type of a designated property 
    '//          from a camera object or image object.
    '//
    '//  Parameters:
    '//       In:    inRef - The reference of the item.
    '//              inPropertyID - The ProprtyID
    '//              inParam - Additional information of property.
    '//                   We use this parameter in order to specify an index
    '//                   in case there are two or more values over the same ID.
    '//      Out:    outDataType - Pointer to the buffer that is to receive the property
    '//                        type data.
    '//              outSize - Pointer to the buffer that is to receive the property
    '//                        size.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetPropertySize
    '//
    '//说明：
    '//获取指定属性的字节的大小和数据的类型
    '//从相机对象或图像对象。
    '//
    '//参数：
    '//In：inRef - 该项目的参考。
    '//    inPropertyID - ProprtyID
    '//    inParam - 属性的其他信息。
    '//            我们使用此参数，以指定一个索引
    '//            的情况下，有两个或两个以上相同的ID值。
    '//Out：outDataType - 指针的缓冲区，收到属性的数据类型。
    '//
    '//    outSize - 指针的缓冲区，收到属性的大小。
    '//
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetPropertySize Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByVal inPropertyID As Integer, _
        ByVal inParam As Integer, _
        ByRef outDataType As EdsDataType, _
        ByRef outSize As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetPropertyData
    '//
    '//  Description:
    '//     Get the property data value.
    '//
    '//  Parameters:
    '//       In:   inRef - The reference of the item.
    '//             inPropertyID - The ProprtyID
    '//             inParam - Additional information of property.
    '//                  We use this parameter in order to specify an index
    '//                  in case there are two or more values over the same ID.
    '//             inPropertySize - The number of bytes of the prepared buffer
    '//                 for receive property-value.
    '//      Out:   outPropertyValue - The buffer pointer to receive property-value.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetPropertyData
    '//
    '//说明：
    '//获取属性数据值。
    '//
    '//参数：
    '//In：inRef - 该项目的参考。
    '//   inPropertyID - ProprtyID
    '//   inParam - 属性的其他信息。
    '//           我们使用此参数，以指定一个索引
    '//           的情况下，有两个或两个以上相同的ID值。
    '// inPropertySize - 准备缓冲区的字节数接收的财产价值。
    '//
    '//Out：outPropertyValue - 接收属性值的缓冲区的指针。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetPropertyData Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByVal inPropertyID As Integer, _
        ByVal inParam As Integer, _
        ByVal inPropertySize As Integer, _
        ByVal outPropertyData As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetPropertyData
    '//
    '//  Description:
    '//      Sets property data for the object designated in inRef. 
    '//
    '//  Parameters:
    '//       In:    inRef - The reference of the item.
    '//              inPropertyID - The ProprtyID
    '//              inParam - Additional information of property.
    '//              inPropertySize - The number of bytes of the prepared buffer
    '//                  for set property-value.
    '//              inPropertyData - The buffer pointer to set property-value.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetPropertyData
    '//
    '//说明：
    '//设置为在inRef指定的对象属性的数据。
    '//
    '//参数：
    '//：inRef - 该项目的参考。
    '// inPropertyID - ProprtyID
    '// inParam - 属性的其他信息。
    '// inPropertySize - 准备缓冲区的字节数设置属性值。
    '//              
    '// inPropertyData - 设置属性值的缓冲区的指针。
    '//Out ：无
    '//
    '//返回：SDK中的任何错误。
    '-----------------------------------------------------------------------------*/

    Public Declare Function EdsSetPropertyData Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByVal inPropertyID As Integer, _
        ByVal inParam As Integer, _
        ByVal inPropertySize As Integer, _
        <MarshalAs(UnmanagedType.AsAny)> ByVal inPropertyData As Object) As Integer


    '/*-----------------------------------------------------------------------------
    '//  
    '//  Function:   EdsGetPropertyDesc
    '//
    '//  Description:
    '//      Gets a list of property data that can be set for the object 
    '//          designated in inRef, as well as maximum and minimum values. 
    '//      This API is intended for only some shooting-related properties.
    '//
    '//  Parameters:
    '//       In:    inRef - The reference of the camera.
    '//              inPropertyID - The Property ID.
    '//       Out:   outPropertyDesc - Array of the value which can be set up.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetPropertyDesc
    '//
    '//说明：
    '//获取一个可为该对象设置的属性数据列表
    '//指定inRef，以及最高和最低值。
    '//这个API的目的是为一些拍摄相关的属性。
    '//
    '//参数：
    '//In：inRef - 相机的参考。
    '//    inPropertyID - 属性ID。
    '//Out：outPropertyDesc - 可以设置值的数组。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetPropertyDesc Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByVal inPropertyID As Integer, _
        ByRef outPropertyDesc As EdsPropertyDesc) As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '// device-list and device operation 
    '// 设备清单和设备的操作
    '//
    '*******************************************************************************
    '******************************************************************************/

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetCameraList
    '//
    '//  Description:
    '//      Gets camera list objects.
    '//
    '//  Parameters:
    '//       In:    None
    '//      Out:    outCameraListRef - Pointer to the camera-list.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetCameraList
    '//
    '//说明：
    '//获取摄像头列表对象。
    '//
    '//参数：
    '//In：无
    '//Out：outCameraListRef - 相机列表的指针。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetCameraList Lib "EDSDK" ( _
        ByRef outCameraListRef As IntPtr) As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '// camera operation 
    '// 相机的操作
    '//
    '*******************************************************************************
    '******************************************************************************/

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetDeviceInfo
    '//
    '//  Description:
    '//      Gets device information, such as the device name.  
    '//      Because device information of remote cameras is stored 
    '//          on the host computer, you can use this API 
    '//          before the camera object initiates communication
    '//          (that is, before a session is opened). 
    '//
    '//  Parameters:
    '//       In:    inCameraRef - The reference of the camera.
    '//      Out:    outDeviceInfo - Information as device of camera.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetDeviceInfo
    '//
    '//说明：
    '//获取设备信息，如设备名称。
    '//因为设备的远程摄像机信息存储
    '//在主机上，你可以使用这个API
    '//在对象发起通信前的
    '//（即前打开一个会话前）。
    '//
    '//参数：
    '//In：inCameraRef - 相机的参考。
    '//Out：outDeviceInfo - 摄像装置的信息。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetDeviceInfo Lib "EDSDK" ( _
        ByVal inCameraRef As IntPtr, _
        ByRef outDeviceInfo As EdsDeviceInfo) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsOpenSession
    '//
    '//  Description:
    '//      Establishes a logical connection with a remote camera. 
    '//      Use this API after getting the camera's EdsCamera object.
    '//
    '//  Parameters:
    '//       In:    inCameraRef - The reference of the camera 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsOpenSession
    '//
    '//说明：
    '//建立一个逻辑连接与远程摄像机。
    '//获取相机的EdsCamera对象后，使用这个API。
    '//
    '//参数：
    '//In：inCameraRef - 相机的参考
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsOpenSession Lib "EDSDK" (ByVal inCameraRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCloseSession
    '//
    '//  Description:
    '//       Closes a logical connection with a remote camera.
    '//
    '//  Parameters:
    '//       In:    inCameraRef - The reference of the camera 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCloseSession
    '//
    '//说明：
    '//关闭与远程摄像机的逻辑连接。
    '//
    '//参数：
    '//In：inCameraRef - 相机的参考
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsCloseSession Lib "EDSDK" (ByVal inCameraRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSendCommand
    '//
    '//  Description:
    '//       Sends a command such as "Shoot" to a remote camera. 
    '//
    '//  Parameters:
    '//       In:    inCameraRef - The reference of the camera which will receive the 
    '//                      command.
    '//              inCommand - Specifies the command to be sent.
    '//              inParam -     Specifies additional command-specific information.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSendCommand
    '//
    '//说明：
    '//发送命令，如“拍”到远程相机。
    '//
    '//参数：
    '//In：inCameraRef - 接收命令的相机的参考。
    '// 
    '//    inCommand - 指定要发送的命令。
    '//    inParam - 指定其他命令的具体信息。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSendCommand Lib "EDSDK" ( _
        ByVal inCameraRef As IntPtr, _
        ByVal inCommandID As Integer, _
        ByVal inParam As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSendStatusCommand
    '//
    '//  Description:
    '//       Sets the remote camera state or mode.
    '//
    '//  Parameters:
    '//       In:    inCameraRef - The reference of the camera which will receive the 
    '//                      command.
    '//              inStatusCommand - Specifies the command to be sent.
    '//              inParam -     Specifies additional command-specific information.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSendStatusCommand
    '//
    '//说明：
    '//设置远程摄像状态或模式。
    '//
    '//参数：
    '//In：inCameraRef - 将收到命令的相机参考。
    '//
    '//    inStatusCommand - 指定要发送的命令。
    '//    inParam - 指定其他命令的具体信息。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSendStatusCommand Lib "EDSDK" ( _
        ByVal inCameraRef As IntPtr, _
        ByVal inStatusCommand As Integer, _
        ByVal inParam As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetCapacity
    '//
    '//  Description:
    '//      Sets the remaining HDD capacity on the host computer
    '//          (excluding the portion from image transfer),
    '//          as calculated by subtracting the portion from the previous time. 
    '//      Set a reset flag initially and designate the cluster length 
    '//          and number of free clusters.
    '//      Some type 2 protocol standard cameras can display the number of shots 
    '//          left on the camera based on the available disk capacity 
    '//          of the host computer. 
    '//      For these cameras, after the storage destination is set to the computer, 
    '//          use this API to notify the camera of the available disk capacity 
    '//          of the host computer.
    '//
    '//  Parameters:
    '//       In:    inCameraRef - The reference of the camera which will receive the 
    '//                      command.
    '//              inCapacity -  The remaining capacity of a transmission place.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetCapacity
    '//
    '//说明：
    '//设置主机电脑上的剩余硬盘容量
    '//（不包括图像传输的部分），
    '//计算从前一部分减去。
    '//设置一个复位标志最初指定的集群长度
    '//空闲簇数。
    '//有些2型协议标准的摄像头可以显示拍摄张数
    '//相机上留下的基础上可用的磁盘容量
    '//电脑主机。
    '//对于这些相机，存储目标设置在计算机上后，
    '//使用这个API通知相机在电脑主机的可用磁盘容量。
    '//
    '//
    '//参数：
    '//In：inCameraRef - 将收到命令的相机参考。
    '//
    '//  inCapacity - 传输地方的剩余容量。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetCapacity Lib "EDSDK" ( _
                ByVal inCameraRef As IntPtr, _
                ByVal inCapacity As EdsCapacity) As Integer

    '/******************************************************************************
    '*******************************************************************************
    '//
    '// volume operation
    '// 卷操作
    '//
    '*******************************************************************************
    '******************************************************************************/

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetVolumeInfo
    '//
    '//  Description:
    '//      Gets volume information for a memory card in the camera.
    '//
    '//  Parameters:
    '//       In:    inVolumeRef - The reference of the volume.
    '//      Out:    outVolumeInfo - information of  the volume.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetVolumeInfo
    '//
    '//说明：
    '//获取在相机记忆中的卷的信息卡。
    '//
    '//参数：
    '//In：inVolumeRef - 卷的参考。
    '//Out：outVolumeInfo - 卷的信息。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Auto Function EdsGetVolumeInfo Lib "EDSDK" ( _
        ByVal inVolumeRef As IntPtr, _
        ByRef outVolumeInfo As EdsVolumeInfo) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsFormatVolume
    '//
    '//  Description:
    '//       .
    '//
    '//  Parameters:
    '//       In:    inVolumeRef - The reference of volume .
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsFormatVolume
    '//
    '//说明：格式化卷
    '//。
    '//
    '//参数：
    '//In：inVolumeRef - 卷的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsFormatVolume Lib "EDSDK" (ByVal inVolumeRef As IntPtr) As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '// directory item operation
    '// 目录项操作
    '//
    '*******************************************************************************
    '******************************************************************************/

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetDirectoryItemInfo
    '//
    '//  Description:
    '//      Gets information about the directory or file objects 
    '//          on the memory card (volume) in a remote camera.
    '//
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//      Out:    outDirItemInfo - information of the directory item.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetDirectoryItemInfo
    '//
    '//说明：
    '//获取远程相机的记忆卡（卷）有关的文件或目录对象信息。
    '//
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//Out：outDirItemInfo - 目录项的信息。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetDirectoryItemInfo Lib "EDSDK" ( _
        ByVal inDirItemRefs As IntPtr, _
        ByRef outDirItemInfo As EdsDirectoryItemInfo) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsDeleteDirectoryItem
    '//
    '//  Description:
    '//      Deletes a camera folder or file.
    '//      If folders with subdirectories are designated, all files are deleted 
    '//          except protected files. 
    '//      EdsDirectoryItem objects deleted by means of this API are implicitly 
    '//          released by the EDSDK. Thus, there is no need to release them 
    '//          by means of EdsRelease.
    '//
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsDeleteDirectoryItem
    '//
    '//说明：
    '//删除相机的文件夹或文件。与子目录的文件夹
    '//如果是指定的，所有的文件被删除.受保护的文件除外。
    '//
    '// EdsDirectoryItem通过这个API已删除的对象是隐式
    '//释放由EDSDK。因此，没有必要将他们释放
    '//通过EdsRelease手段。
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsDeleteDirectoryItem Lib "EDSDK" ( _
        ByVal inDirItemRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsDownload
    '//
    '//  Description:
    '//       Downloads a file on a remote camera 
    '//          (in the camera memory or on a memory card) to the host computer. 
    '//      The downloaded file is sent directly to a file stream created in advance. 
    '//      When dividing the file being retrieved, call this API repeatedly. 
    '//      Also in this case, make the data block size a multiple of 512 (bytes), 
    '//          excluding the final block.
    '//
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//              inReadSize   - 
    '//
    '//      Out:    outStream    - The reference of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsDownload
    '//
    '//说明：
    '//下载一个远程摄像机上的一个文件（在相机记忆体或记忆卡上的文件）到主机。
    '//下载的文件直接发送到预先创建一个文件流。
    '//除以被检索到的文件时，调用这个API反复。
    '//另外，在这种情况下，使数据块的大小是512的倍数（字节），
    '//不包括最后的块。
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//    inReadSize - 
    '//
    '//Out：outStream - 流的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/

    Public Declare Function EdsDownload Lib "EDSDK" ( _
        ByVal inDirItemRef As IntPtr, _
        ByVal inReadSize As Integer, _
        ByVal outStream As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsDownloadCancel
    '//
    '//  Description:
    '//       Must be executed when downloading of a directory item is canceled. 
    '//      Calling this API makes the camera cancel file transmission.
    '//      It also releases resources. 
    '//      This operation need not be executed when using EdsDownloadThumbnail. 
    '//
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsDownloadCancel
    '//
    '//说明：
    '//必须执行当下载一个目录项目被取消时。
    '//调用这个API使得相机取消文件传输。
    '//同时也释放资源。
    '//当使用EdsDownloadThumbnail时，不能执行此操作。
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsDownloadCancel Lib "EDSDK" (ByVal inDirItemRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsDownloadComplete
    '//
    '//  Description:
    '//       Must be called when downloading of directory items is complete. 
    '//          Executing this API makes the camera 
    '//              recognize that file transmission is complete. 
    '//          This operation need not be executed when using EdsDownloadThumbnail.
    '//
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//
    '//      Out:    outStream    - None.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsDownloadComplete
    '//
    '//说明：
    '//下载目录中的项目完成时，必须调用。
    '//执行这个API，使得相机认识到，文件传输完成。
    '//在使用EdsDownloadThumbnail时,不能执行此操作。
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//
    '//Out：outStream - 没有。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsDownloadComplete Lib "EDSDK" (ByVal inDirItemRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsDownloadThumbnail
    '//
    '//  Description:
    '//      Extracts and downloads thumbnail information from image files in a camera. 
    '//      Thumbnail information in the camera's image files is downloaded 
    '//          to the host computer. 
    '//      Downloaded thumbnails are sent directly to a file stream created in advance.
    '//
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//
    '//      Out:    outStream - The reference of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsDownloadThumbnail
    '//
    '//说明：
    '//提取和下载缩略图从相机中的图像文件的信息。
    '//在相机的图像文件的缩略图信息下载
    '//到主计算机。
    '//下载的缩略图直接发送到预先创建一个文件流。
    '//
    '//参数：
    '//：inDirItemRef - 目录项的参考。
    '//
    '//：outStream - 流的参考。
    '//
    '//返回：SDK中的任何错误。
    '-----------------------------------------------------------------------------*/
    Public Declare Function EdsDownloadThumbnail Lib "EDSDK" ( _
        ByVal inDirItemRef As IntPtr, _
        ByVal outStream As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetAttribute
    '//
    '//  Description:
    '//      Gets attributes of files on a camera.
    '//  
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//      Out:    outFileAttribute  - Indicates the file attributes. 
    '//                  As for the file attributes, OR values of the value defined
    '//                  by enum EdsFileAttributes can be retrieved. Thus, when 
    '//                  determining the file attributes, you must check 
    '//                  if an attribute flag is set for target attributes. 
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetAttribute
    '//
    '//说明：
    '//获取摄像头内文件的属性。
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//OUt：outFileAttribute - 表示文件属性。
    '//         文件属性，或定义的枚举值
    '//         EdsFileAttributes可以检索。因此，当
    '//         确定文件的属性，你必须检查
    '//         如果一个属性标志已在目标属性中设置。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetAttribute Lib "EDSDK" ( _
        ByVal inDirItemRef As IntPtr, _
        ByRef outFileAttribute As EdsFileAttributes) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetAttribute
    '//
    '//  Description:
    '//      Changes attributes of files on a camera.
    '//  
    '//  Parameters:
    '//       In:    inDirItemRef - The reference of the directory item.
    '//              inFileAttribute  - Indicates the file attributes. 
    '//                      As for the file attributes, OR values of the value 
    '//                      defined by enum EdsFileAttributes can be retrieved. 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetAttribute
    '//
    '//说明：
    '//更改相机上的文件的属性。
    '//
    '//参数：
    '//In：inDirItemRef - 目录项的参考。
    '//    inFileAttribute - 表示文件属性。
    '//                   文件属性，价值观或价值
    '//                   定义枚举EdsFileAttributes可以检索。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetAttribute Lib "EDSDK" ( _
        ByVal inDirItemRef As IntPtr, _
        ByVal inFileAttribute As EdsFileAttributes) As Integer


    '/******************************************************************************
    '*******************************************************************************
    '//
    '// stream operation
    '//
    '*******************************************************************************
    '******************************************************************************/

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCreateFileStream
    '//
    '//  Description:
    '//      Creates a new file on a host computer (or opens an existing file) 
    '//          and creates a file stream for access to the file. 
    '//      If a new file is designated before executing this API, 
    '//          the file is actually created following the timing of writing 
    '//          by means of EdsWrite or the like with respect to an open stream.
    '//
    '//  Parameters:
    '//       In:    inFileName - Pointer to a null-terminated string that specifies
    '//                           the file name.
    '//              inCreateDisposition - Action to take on files that exist, 
    '//                                and which action to take when files do not exist.  
    '//              inDesiredAccess - Access to the stream (reading, writing, or both).
    '//      Out:    outStream - The reference of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCreateFileStream
    '//
    '//说明：
    '//创建主机上的一个新的文件（或打开一个现有的文件）
    '//同时创建一个访问该文件的文件流。
    '//如果一个新的文件在执行此API之前被指定，
    '//文件实际上是创建以下的写时序
    '// EdsWrite或打开的流。
    '//
    '//参数：
    '//In：inFileName - 指向一个非空的字符串，指定
    '//                 文件名。
    '// inCreateDisposition - 上存在的文件采取的行动，
    '//                    和要采取的行动当文件不存在。
    '// inDesiredAccess - 流的访问（读，写，或两者）。
    '//Out：outStream - 流的参考。
    '//
    '//返回：SDK中的任何错误。
    '-----------------------------------------------------------------------------*/
    Public Declare Function EdsCreateFileStream Lib "EDSDK" ( _
        ByVal inFileName As String, _
        ByVal inCreateDisposition As Integer, _
        ByVal inDesiredAccess As Integer, _
        ByRef outStream As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCreateMemoryStream
    '//
    '//  Description:
    '//      Creates a stream in the memory of a host computer. 
    '//      In the case of writing in excess of the allocated buffer size, 
    '//          the memory is automatically extended.
    '//
    '//  Parameters:
    '//       In:    inBufferSize - The number of bytes of the memory to allocate.
    '//      Out:    outStream - The reference of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCreateMemoryStream
    '//
    '//说明：
    '//创建一个流在一台主机的内存中。
    '//写在超出分配的缓冲区大小的情况下，
    '//存储器自动延长。
    '//
    '//参数：
    '//In：inBufferSize - 内存分配的字节数。
    '//Out：outStream - 流的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsCreateMemoryStream Lib "EDSDK" ( _
            ByVal inBufferSize As Integer, _
            ByRef outStream As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCreateStreamEx
    '//
    '//  Description:
    '//      An extended version of EdsCreateStreamFromFile. 
    '//      Use this function when working with Unicode file names.
    '//
    '//  Parameters:
    '//       In:    inURL (for Macintosh) - Designate CFURLRef. 
    '//              inFileName (for Windows) - Designate the file name. 
    '//              inCreateDisposition - Action to take on files that exist, 
    '//                                and which action to take when files do not exist.  
    '//              inDesiredAccess - Access to the stream (reading, writing, or both).
    '//
    '//      Out:    outStream - The reference of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCreateStreamEx
    '//
    '//说明：
    '// EdsCreateStreamFromFile的一个扩展版本。
    '// 使用Unicode文件名时，使用此功能。
    '//
    '//参数：
    '//In：inurl这样（适用于Macintosh） - 候CFURLRef。
    '//    inFileName（适用于Windows） - 指定的文件名。
    '//    inCreateDisposition - 上存在的文件采取的行动，和要采取的行动当文件不存在。
    '//
    '// inDesiredAccess - 流的访问（读，写，或两者）。
    '//
    '//：outStream - 流的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsCreateFileStreamEx Lib "EDSDK" ( _
        ByRef inFileName As String, _
        ByVal inCreateDisposition As EdsFileCreateDisposition, _
        ByVal inDesiredAccess As EdsAccess, _
        ByRef outStream As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCreateMemoryStreamFromPointer        
    '//
    '//  Description:
    '//      Creates a stream from the memory buffer you prepare. 
    '//      Unlike the buffer size of streams created by means of EdsCreateMemoryStream, 
    '//      the buffer size you prepare for streams created this way does not expand.
    '//
    '//  Parameters:
    '//       In:    inBufferSize - The number of bytes of the memory to allocate.
    '//      Out:    outStream - The reference of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCreateMemoryStreamFromPointer
    '//
    '//说明：
    '//创建一个您准备从内存缓冲区的流。
    '//不像EdsCreateMemoryStream创建的数据流的缓冲区大小，
    '//你准备流缓冲区的大小创建这样不扩大。
    '//
    '//参数：
    '//In：inBufferSize - 内存分配的字节数。
    '//Out：outStream - 流的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsCreateMemoryStreamFromPointer Lib "EDSDK" ( _
       ByVal inUserBuffer As IntPtr, _
       ByVal inBufferSize As Integer, _
       ByRef outStream As IntPtr) As Integer

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetPointer                   
    '//
    '//  Description:
    '//      Gets the pointer to the start address of memory managed by the memory stream. 
    '//      As the EDSDK automatically resizes the buffer, the memory stream provides 
    '//          you with the same access methods as for the file stream. 
    '//      If access is attempted that is excessive with regard to the buffer size
    '//          for the stream, data before the required buffer size is allocated 
    '//          is copied internally, and new writing occurs. 
    '//      Thus, the buffer pointer might be switched on an unknown timing. 
    '//      Caution in use is therefore advised. 
    '//
    '//  Parameters:
    '//       In:    inStream - Designate the memory stream for the pointer to retrieve. 
    '//      Out:    outPointer - If successful, returns the pointer to the buffer 
    '//                  written in the memory stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetPointer
    '//
    '//说明：
    '//获取内存流管理的内存的起始地址的指针。
    '//由于EDSDK自动调整缓冲，内存流提供
    '//文件流相同的访问方法。
    '//如果试图访问是关于缓冲区的大小过度
    '//流数据之前所需的缓冲区大小分配
    '//内部复制，并出现新的写作。
    '//因此，缓冲区指针可能会打开一个未知的时机。因此，建议“
    '//使用注意事项。
    '//
    '//参数：
    '//In：inStream中 - 候为指针，以检索内存流。
    '//Out：outPointer - 如果成功，返回到缓冲区的指针
    '//写入内存流。
    '//
    '//返回：SDK中的任何错误。
    '-----------------------------------------------------------------------------*/

    Public Declare Function EdsGetPointer Lib "EDSDK" ( _
            ByVal inStream As IntPtr, _
            ByRef outPointer As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsRead
    '//
    '//  Description:
    '//      Reads data the size of inReadSize into the outBuffer buffer, 
    '//          starting at the current read or write position of the stream. 
    '//      The size of data actually read can be designated in outReadSize.
    '//
    '//  Parameters:
    '//       In:    inStreamRef - The reference of the stream or image.
    '//              inReadSize -  The number of bytes to read.
    '//      Out:    outBuffer - Pointer to the user-supplied buffer that is to receive
    '//                          the data read from the stream. 
    '//              outReadSize - The actually read number of bytes.
    '//
    '//  Returns:    Any of the sdk errors.
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsRead
    '//
    '//说明：
    '//读取数据的inReadSize进入outBuffer缓冲区的大小，
    '//在当前的读取或写入流中的位置开始。
    '//数据的大小实际上是阅读，可以指定在outReadSize。
    '//
    '//参数：
    '//In：inStreamRef - 流或图像的参考。
    '//   inReadSize - 来读的字节数。
    '//Out：outBuffer - 是接收用户提供的缓冲区的指针，
    '//                 从流中读取数据。
    '//   outReadSize - 实际读取的字节数。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    '-----------------------------------------------------------------------------*/
    Public Declare Function EdsRead Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByVal inReadSize As Integer, _
            ByVal outBuffer As IntPtr, _
            ByRef outReadSize As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsWrite
    '//
    '//  Description:
    '//      Writes data of a designated buffer 
    '//          to the current read or write position of the stream. 
    '//
    '//  Parameters:
    '//       In:    inStreamRef  - The reference of the stream or image.
    '//              inWriteSize - The number of bytes to write.
    '//              inBuffer - A pointer to the user-supplied buffer that contains 
    '//                         the data to be written to the stream.
    '//      Out:    outWrittenSize - The actually written-in number of bytes.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsWrite
    '//
    '//说明：
    '//指定的缓冲区写入数据
    '//当前读取或写入流中的位置。
    '//
    '//参数：
    '//In：inStreamRef - 流或图像的参考。
    '//    inWriteSize - 写入的字节数。
    '//    inBuffer - 一个用户提供的缓冲区的指针，包含
    '//               数据写入流。
    '//Out：outWrittenSize - 实际写入的字节数。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsWrite Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByVal inWriteSize As Integer, _
            ByVal inBuffer As IntPtr, _
            ByRef outWrittenSize As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSeek
    '//
    '//  Description:
    '//      Moves the read or write position of the stream
    '            (that is, the file position indicator).
    '//
    '//  Parameters:
    '//       In:    inStreamRef  - The reference of the stream or image. 
    '//              inSeekOffset - Number of bytes to move the pointer. 
    '//              inSeekOrigin - Pointer movement mode. Must be one of the following 
    '//                             values.
    '//                  kEdsSeek_Cur     Move the stream pointer inSeekOffset bytes 
    '//                                   from the current position in the stream. 
    '//                  kEdsSeek_Begin   Move the stream pointer inSeekOffset bytes
    '//                                   forward from the beginning of the stream. 
    '//                  kEdsSeek_End     Move the stream pointer inSeekOffset bytes
    '//                                   from the end of the stream. 
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSeek
    '//
    '//说明：
    '//将读取或写入流中的位置（即，文件位置指示器）。
    '//
    '//参数：
    '//In：inStreamRef - 流或图像的参考。
    '// inSeekOffset - 将指针移动的字节数。
    '// inSeekOrigin - 指针的移动模式。必须为下列之一值。
    '//
    '//   kEdsSeek_Cur移动流指针inSeekOffset字节从流中的当前位置。
    '//
    '//  kEdsSeek_Begin移动流指针inSeekOffset字节向前从流的开始。
    '//
    '// kEdsSeek_End移动流指针inSeekOffset字节从流的末尾。
    '//
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSeek Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByVal inSeekOffset As Integer, _
            ByVal inSeekOrigin As EdsSeekOrigin) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetPosition
    '//
    '//  Description:
    '//       Gets the current read or write position of the stream
    '//          (that is, the file position indicator).
    '//
    '//  Parameters:
    '//       In:    inStreamRef - The reference of the stream or image.
    '//      Out:    outPosition - The current stream pointer.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetPosition
    '//
    '//说明：
    '//获取当前的读取或写入流中的位置（即，文件位置指示器）。
    '//
    '//
    '//参数：
    '//In：inStreamRef - 流或图像的参考。
    '//Out：outPosition - 当前流的指针。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetPosition Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByRef outPosition As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetLength
    '//
    '//  Description:
    '//      Gets the stream size.
    '//
    '//  Parameters:
    '//       In:    inStreamRef - The reference of the stream or image.
    '//      Out:    outLength - The length of the stream.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetLength
    '//
    '//说明：
    '//获取数据流的大小。
    '//
    '//参数：
    '//In：inStreamRef - 流或图像的参考。
    '//Out：outLength - 流的长度。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetLength Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByRef outLength As Integer) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCopyData
    '//
    '//  Description:
    '//      Copies data from the copy source stream to the copy destination stream. 
    '//      The read or write position of the data to copy is determined from 
    '//          the current file read or write position of the respective stream. 
    '//      After this API is executed, the read or write positions of the copy source 
    '//          and copy destination streams are moved an amount corresponding to 
    '//          inWriteSize in the positive direction. 
    '//
    '//  Parameters:
    '//       In:    inStreamRef - The reference of the stream or image.
    '//              inWriteSize - The number of bytes to copy.
    '//      Out:    outStreamRef - The reference of the stream or image.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCopyData
    '//
    '//说明：
    '//复制数据从复制源流复制目的地流。
    '//读取或写入数据的位置，复制是确定
    '//当前文件的读或写在各自的流位置。
    '//执行这个API后，读或写的复制源的位置
    '//复制目的地流提出相应的金额，
    '// inWriteSize在积极的方向。
    '//
    '//参数：
    '//In：inStreamRef - 流或图像的参考。
    '//    inWriteSize - 要复制的字节数。
    '//OUt：outStreamRef - 流或图像的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsCopyData Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByVal inWriteSize As Integer, _
            ByVal OutStreamRef As IntPtr) As Integer



    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetProgressCallback
    '//
    '//  Description:
    '//      Register a progress callback function. 
    '//      An event is received as notification of progress during processing that 
    '//          takes a relatively long time, such as downloading files from a
    '//          remote camera. 
    '//      If you register the callback function, the EDSDK calls the callback
    '//          function during execution or on completion of the following APIs. 
    '//      This timing can be used in updating on-screen progress bars, for example.
    '//
    '//  Parameters:
    '//       In:    inRef - The reference of the stream or image.
    '//              inProgressCallback - Pointer to a progress callback function.
    '//              inProgressOption - The option about progress is specified.
    '//                              Must be one of the following values.
    '//                         kEdsProgressOption_Done 
    '//                             When processing is completed,a callback function
    '//                             is called only at once.
    '//                         kEdsProgressOption_Periodically
    '//                             A callback function is performed periodically.
    '//              inContext - Application information, passed in the argument 
    '//                      when the callback function is called. Any information 
    '//                      required for your program may be added. 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetProgressCallback
    '//
    '//说明：
    '//注册一个进度的回调函数。
    '//事件是在加工过程中，收到进度通知
    '//需要一个相对长的的时间，比如从一个下载文件
    '//遥控摄像机。
    '//如果您注册的回调函数，EDSDK调用回调
    '//在执行过程中或完成下列API的功能。
    '//这样的时间安排可用于更新屏幕上的进度条，例如。
    '//
    '//参数：
    '//In：inRef - 流或图像的参考。
    '//  inProgressCallback - 一个进度的回调函数的指针。
    '//  inProgressOption - 关于进度的选项是指定的。
    '//     必须是以下值之一。
    '//      kEdsProgressOption_Done
    '//          当处理完成后，回调函数
    '//          只调用一次。
    '//       kEdsProgressOption_Periodically
    '//          回调函数是定期进行。
    '// inContext - 应用信息，在参数传递
    '//      当回调函数被调用。任何信息
    '//      需要为你的程序可能会增加。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetProgressCallback Lib "EDSDK" ( _
        ByVal inRef As IntPtr, _
        ByVal inProgressCallback As EdsProgressCallback, _
        ByVal inProgressOption As EdsProgressOption, _
        ByVal inContext As IntPtr) As Integer



    '/******************************************************************************
    '*******************************************************************************
    '//
    '// image operation
    '// 图像操作
    '//
    '*******************************************************************************
    '******************************************************************************/


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCreateImageRef
    '//
    '//  Description:
    '//      Creates an image object from an image file. 
    '//      Without modification, stream objects cannot be worked with as images. 
    '//      Thus, when extracting images from image files, 
    '//          you must use this API to create image objects. 
    '//      The image object created this way can be used to get image information 
    '//          (such as the height and width, number of color components, and
    '//           resolution), thumbnail image data, and the image data itself.
    '//
    '//  Parameters:
    '//       In:    inStreamRef - The reference of the stream.
    '//
    '//       Out:    outImageRef - The reference of the image.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCreateImageRef
    '//
    '//说明：
    '//创建一个图像文件的图像对象。
    '//不加修改，流对象不能同为图像。
    '//因此，当从图像文件中提取图像，
    '//你必须使用这个API来创建图像对象。
    '// Image对象创建了这种方式可以用来获取图像信息
    '//（如高度和宽度，颜色分量数，并
    '//分辨率），缩略图图像数据，图像数据本身。
    '//
    '//参数：
    '//In：inStreamRef - 流的参考。
    '//
    '//Out：outImageRef - 图像的参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsCreateImageRef Lib "EDSDK" ( _
        ByVal inStreamRef As IntPtr, _
        ByRef outImageRef As IntPtr) As Integer




    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetImageInfo
    '//
    '//  Description:
    '//      Gets image information from a designated image object. 
    '//      Here, image information means the image width and height, 
    '//          number of color components, resolution, and effective image area.
    '//
    '//  Parameters:
    '//       In:    inStreamRef - Designate the object for which to get image information. 
    '//              inImageSource - Of the various image data items in the image file,
    '//                  designate the type of image data representing the 
    '//                  information you want to get. Designate the image as
    '//                  defined in Enum EdsImageSource. 
    '//
    '//                      kEdsImageSrc_FullView
    '//                                  The image itself (a full-sized image) 
    '//                      kEdsImageSrc_Thumbnail
    '//                                  A thumbnail image 
    '//                      kEdsImageSrc_Preview
    '//                                  A preview image
    '//                      kEdsImageSrc_RAWThumbnail
    '//                                  A RAW thumbnail image 
    '//                      kEdsImageSrc_RAWFullView
    '//                                  A RAW full-sized image 
    '//       Out:    outImageInfo - Stores the image data information designated 
    '//                      in inImageSource. 
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsGetImageInfo
    '//
    '//说明：
    '//获取图像信息，从指定的图像对象。
    '//这里，图像信息是指图像的宽度和高度，
    '//颜色分量，分辨率和有效的图像区域。
    '//
    '//参数：
    '//In：inStreamRef - 指定对象为其获得的图像信息。
    '//    inImageSource - 各种图像数据在图像文件中的项目，
    '//                  指定代表的图像数据的类型
    '//                  你想要得到的信息。指定形象
    '//                  定义枚举EdsImageSource。
    '//
    '//           kEdsImageSrc_FullView
    '//                图像本身（一个全尺寸的图像）
    '//          kEdsImageSrc_Thumbnail
    '//                缩略图图像
    '// kEdsImageSrc_Preview
    '//                预览图像
    '// kEdsImageSrc_RAWThumbnail
    '//                RAW缩略图图像
    '// kEdsImageSrc_RAWFullView
    '//                全尺寸的RAW图像
    '//Out：outImageInfo - 存储的图像数据信息指定 inImageSource。
    '//                  
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetImageInfo Lib "EDSDK" ( _
            ByVal inImageRef As IntPtr, _
            ByVal inImageSource As EdsImageSource, _
            ByRef outImageInfo As EdsImageInfo) As Integer

    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsGetImage                         
    '//
    '//  Description:
    '//      Gets designated image data from an image file, in the form of a
    '//          designated rectangle. 
    '//      Returns uncompressed results for JPEGs and processed results 
    '//          in the designated pixel order (RGB, Top-down BGR, and so on) for
    '//           RAW images. 
    '//      Additionally, by designating the input/output rectangle, 
    '//          it is possible to get reduced, enlarged, or partial images. 
    '//      However, because images corresponding to the designated output rectangle 
    '//          are always returned by the SDK, the SDK does not take the aspect 
    '//          ratio into account. 
    '//      To maintain the aspect ratio, you must keep the aspect ratio in mind 
    '//          when designating the rectangle. 
    '//
    '//  Parameters:
    '//      In:     
    '//              inImageRef - Designate the image object for which to get 
    '//                      the image data.
    '//              inImageSource - Designate the type of image data to get from
    '//                      the image file (thumbnail, preview, and so on). 
    '//                      Designate values as defined in Enum EdsImageSource. 
    '//              inImageType - Designate the output image type. Because
    '//                      the output format of EdGetImage may only be RGB, only
    '//                      kEdsTargetImageType_RGB or kEdsTargetImageType_RGB16
    '//                      can be designated. 
    '//                      However, image types exceeding the resolution of 
    '//                      inImageSource cannot be designated. 
    '//              inSrcRect - Designate the coordinates and size of the rectangle
    '//                      to be retrieved (processed) from the source image. 
    '//              inDstSize - Designate the rectangle size for output. 
    '//
    '//      Out:    
    '//              outStreamRef - Designate the memory or file stream for output of
    '//                      the image.
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*----------------------------------------------- ------------------------------
    '//
    '//功能：EdsGetImage
    '//
    '//说明：
    '//获取指定的图像数据从一个图像文件的一种形式，
    '//指定矩形。
    '//返回未压缩的结果为JPEG文件和处理结果
    '//在指定的像素顺序（RGB，自上而下的BGR，依此类推）
    '// RAW图像。
    '//此外，通过指定的输入/输出矩形，
    '//这是有可能得到缩小，放大，或部分的图像。
    '//但是，由于图像对应到指定的输出矩形
    '//总是返回的SDK，SDK不采取纵横
    '//考虑的比例。
    '//为了保持长宽比，你必须牢记的长宽比
    '//当指定的矩形。
    '//
    '//参数：
    '//In：
    '// inImageRef - 指定图像的对象，要获得图像数据。
    '//
    '// inImageSource - 候类型的图像数据，从图像文件（缩略图，预览等）。
    '//
    '//指定的值定义在枚举EdsImageSource。
    '// inImageType - 指定输出图像类型。由于
    '// EdGetImage输出格式仅是RGB，只有
    '// kEdsTargetImageType_RGB或kEdsTargetImageType_RGB16
    '//可以指定。
    '//不过，图像类型超过了决议
    '// inImageSource不能指定。
    '// inSrcRect - 指定的矩形的坐标和大小
    '//要检索（处理）从源图像。
    '// inDstSize - 指定输出矩形大小。
    '//
    '//Out：
    '// outStreamRef - 指定输出的内存或文件流
    '//图像。
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsGetImage Lib "EDSDK" ( _
        ByVal inImageRef As IntPtr, _
        ByVal inImageSource As EdsImageSource, _
        ByVal inImageType As EdsTargetImageType, _
        ByVal inSrcRect As EdsRect, _
        ByVal inDstSize As EdsSize, _
        ByVal outStreamRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSaveImage            
    '//
    '//  Description:
    '//      Saves as a designated image type after RAW processing. 
    '//      When saving with JPEG compression, 
    '//          the JPEG quality setting applies with respect to EdsOptionRef.
    '//
    '//  Parameters:
    '//      In:    
    '//          inImageRef - Designate the image object for which to produce the file. 
    '//          inImageType - Designate the image type to produce. Designate the 
    '//                  following image types.
    '//
    '//                  kEdsTargetImageType - Jpeg  JPEG
    '//                  kEdsTargetImageType - TIFF  8-bit TIFF
    '//                  kEdsTargetImageType - TIFF16    16-bit TIFF
    '//          inSaveSetting - Designate saving options, such as JPEG image quality.
    '//      Out:    
    '//          outStreamRef - Specifies the output file stream. The memory stream 
    '//                  cannot be specified here.
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSaveImage
    '//
    '//说明：
    '//保存为一个指定的RAW处理后的图像类型。
    '//保存JPEG压缩时，
    '// JPEG质量设置适用于与尊重，以EdsOptionRef。
    '//
    '//参数：
    '//In：
    '// inImageRef - 指定图像对象而产生的文件。
    '// inImageType - 指定图像类型生产。指定下面的图像类型。
    '//
    '// kEdsTargetImageType - JPEG JPEG
    '// kEdsTargetImageType - TIFF8位TIFF
    '// kEdsTargetImageType - TIFF1616位TIFF
    '// inSaveSetting - 候节能选项，如JPEG图像质量，。
    '//Out：
    '// outStreamRef - 指定输出文件流。内存流这里不能指定。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSaveImage Lib "EDSDK" ( _
        ByVal inImageRef As IntPtr, _
        ByVal inImageType As EdsTargetImageType, _
        ByVal inSaveSetting As EdsSaveImageSetting, _
        ByVal outStreamRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCacheImage                       
    '//
    '//  Description:
    '//      Switches a setting on and off for creation of an image cache in the SDK 
    '//          for a designated image object during extraction (processing) of
    '//          the image data. 
    '//          Creating the cache increases the processing speed, starting from
    '//          the second time.
    '//
    '//  Parameters:
    '//      In:     inImageRef - The reference of the image.
    '//              inUseCache - If cache image data or not
    '//                          If set to FALSE, the cached image data will released.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCacheImage
    '//
    '//说明：
    '//打开和关闭开关的设置创建一个SDK中的图像缓存
    '//（加工）在提取过程中的一个指定的图像对象
    '//图像数据。
    '//创建缓存，提高了处理速度，从
    '//第二次。
    '//
    '//参数：
    '//In：inImageRef - 图像的参考。
    '// inUseCache - 如果缓存的图像数据或不
    '//如果设置为FALSE，缓存的图像数据将公布。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/

    Public Declare Function EdsCacheImage Lib "EDSDK" ( _
         ByVal inImageRef As IntPtr, _
         ByVal inUseCache As Boolean) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsReflectImageProperty         
    '//  Description:
    '//      Incorporates image object property changes 
    '//          (effected by means of EdsSetPropertyData) in the stream. 
    '//
    '//  Parameters:
    '//      In:     inImageRef - The reference of the image.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsReflectImageProperty
    '//说明：
    '//采用图像对象属性的变化 （EdsSetPropertyData影响），在流。
    '//
    '//参数：
    '//In：inImageRef - 图像的参考。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/

    Public Declare Function EdsReflectImageProperty Lib "EDSDK" (ByVal inImageRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsCreateEvfImageRef         
    '//  Description:
    '//       Creates an object used to get the live view image data set. 
    '//
    '/  Parameters:
    '//      In:     inStreamRef - The stream reference which opened to get EVF JPEG image.
    '//      Out:    outEvfImageRef - The EVFData reference.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsCreateEvfImageRef
    '//说明：
    '//创建一个用于获取实时显示图像数据集的对象。
    '//
    '/参数：
    '//In：inStreamRef - 开放EVF JPEG图像流的引用。
    '//Out：outEvfImageRef - EVFData参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/

    Public Declare Function EdsCreateEvfImageRef Lib "EDSDK" ( _
            ByVal inStreamRef As IntPtr, _
            ByRef outEvfImageRef As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsDownloadEvfImage         
    '//  Description:
    '//		Downloads the live view image data set for a camera currently in live view mode.
    '//		Live view can be started by using the property ID:kEdsPropertyID_Evf_OutputDevice and
    '//		data:EdsOutputDevice_PC to call EdsSetPropertyData.
    '//		In addition to image data, information such as zoom, focus position, and histogram data
    '//		is included in the image data set. Image data is saved in a stream maintained by EdsEvfImageRef.
    '//		EdsGetPropertyData can be used to get information such as the zoom, focus position, etc.
    '//		Although the information of the zoom and focus position can be obtained from EdsEvfImageRef,
    '//		settings are applied to EdsCameraRef.
    '//
    '//  Parameters:
    '//      In:     inCameraRef - The Camera reference.
    '//      In:     inEvfImageRef - The EVFData reference.
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsDownloadEvfImage
    '//说明：
    '//下载，实时显示图像数据，目前在Live View模式的相机设置。
    '//现场查看可以开始使用属性ID：kEdsPropertyID_Evf_OutputDevice和
    '//数据：EdsOutputDevice_PC调用EdsSetPropertyData。
    '//图像数据，如变焦，聚焦位置的信息和直方图数据，除了
    '//包含图像数据集。图像数据将被保存在EdsEvfImageRef保持流。
    '// EdsGetPropertyData可以被用来获取信息，如变焦，焦点位置等
    '//虽然可以从EdsEvfImageRef获得的变焦和聚焦位置的信息，
    '//设置应用到EdsCameraRef。
    '//
    '//参数：
    '//In：inCameraRef - 摄像机参考。
    '//Out：inEvfImageRef - EVFData参考。
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsDownloadEvfImage Lib "EDSDK" ( _
                ByVal inCameraRef As IntPtr, _
                ByVal inEvfImageRef As IntPtr) As Integer

    '/******************************************************************************
    '*******************************************************************************
    '//
    '// event handler
    '// 事件处理程序
    '//
    '*******************************************************************************
    '******************************************************************************/


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetCameraAddedHandler
    '//
    '//  Description:
    '//      Registers a callback function for when a camera is detected.
    '//
    '//  Parameters:
    '//       In:    inCameraAddedHandler - Pointer to a callback function
    '//                          called when a camera is connected physically
    '//              inContext - Specifies an application-defined value to be sent to
    '//                          the callback function pointed to by CallBack parameter.
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetCameraAddedHandler
    '//
    '//说明：
    '//为检测到相机时响应而注册一个回调函数当。
    '//
    '//参数：
    '//In：inCameraAddedHandler - 一个回调函数的指针
    '//调用，当一个物理连接相机
    '// inContext - 指定被发送到一个应用程序定义的的值
    '//回调参数所指向的回调函数。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetCameraAddedHandler Lib "EDSDK" ( _
            ByVal inCameraAddedHandler As EdsCameraAddedHandler, _
            ByVal inContext As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetPropertyEventHandler
    '//              
    '//  Description:
    '//       Registers a callback function for receiving status 
    '//          change notification events for property states on a camera.
    '//
    '//  Parameters:
    '//       In:    inCameraRef - Designate the camera object. 
    '//              inEvent - Designate one or all events to be supplemented.
    '//              inPropertyEventHandler - Designate the pointer to the callback
    '//                      function for receiving property-related camera events.
    '//              inContext - Designate application information to be passed by 
    '//                      means of the callback function. Any data needed for
    '//                      your application can be passed. 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetPropertyEventHandler
    '//
    '//说明：
    '//注册一个回调函数接收状态为相机的属性状态变化通知事件。
    '//
    '//
    '//参数：
    '//In：inCameraRef - 指定相机对象。
    '// inEvent - 指定一个或加以补充的所有事件。
    '// inPropertyEventHandler - 指定的回调指针
    '//接收与物业有关的相机事件的功能。
    '//候inContext - 指定你的应用程序所要传弟的信息。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetPropertyEventHandler Lib "EDSDK" ( _
        ByVal inCameraRef As IntPtr, _
        ByVal inEvnet As Integer, _
        ByVal inPropertyEventHandler As EdsPropertyEventHandler, _
        ByVal inContext As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:   EdsSetObjectEventHandler
    '//              
    '//  Description:
    '//       Registers a callback function for receiving status 
    '//          change notification events for objects on a remote camera. 
    '//      Here, object means volumes representing memory cards, files and directories, 
    '//          and shot images stored in memory, in particular. 
    '//
    '//  Parameters:
    '//       In:    inCameraRef - Designate the camera object. 
    '//              inEvent - Designate one or all events to be supplemented.
    '//                  To designate all events, use kEdsObjectEvent_All. 
    '//              inObjectEventHandler - Designate the pointer to the callback function
    '//                  for receiving object-related camera events.
    '//              inContext - Passes inContext without modification,
    '//                  as designated as an EdsSetObjectEventHandler argument. 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetObjectEventHandler
    '//
    '//说明：
    '//注册一个回调函数接收状态远程摄像机上的对象
    '//更改通知事件。
    '//这里，对象特别是指代表存储卡，文件和目录的卷，
    '//和拍摄的图像存储在内存中。
    '//
    '//参数：
    '//In：inCameraRef - 指定相机对象。
    '//    inEvent - 指定一个或加以补充的所有事件。
    '//             指定的所有事件，使用kEdsObjectEvent_All。
    '// inObjectEventHandler - 指定的回调函数的指针
    '//                        接收对象相关的相机事件。
    '// inContext - 通过inContext无需修改，指定作为一个EdsSetObjectEventHandler参数。
    '//
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetObjectEventHandler Lib "EDSDK" ( _
        ByVal inCameraRef As IntPtr, _
        ByVal inEvnet As Integer, _
        ByVal inObjectEventHandler As EdsObjectEventHandler, _
        ByVal inContext As IntPtr) As Integer


    '/*-----------------------------------------------------------------------------
    '//
    '//  Function:  EdsSetCameraStateEventHandler
    '//              
    '//  Description:
    '//      Registers a callback function for receiving status 
    '//          change notification events for property states on a camera.
    '//
    '//  Parameters:
    '//       In:    inCameraRef - Designate the camera object. 
    '//              inEvent - Designate one or all events to be supplemented.
    '//                  To designate all events, use kEdsStateEvent_All. 
    '//              inStateEventHandler - Designate the pointer to the callback function
    '//                  for receiving events related to camera object states.
    '//              inContext - Designate application information to be passed
    '//                  by means of the callback function. Any data needed for
    '//                  your application can be passed. 
    '//      Out:    None
    '//
    '//  Returns:    Any of the sdk errors.
    '-----------------------------------------------------------------------------*/
    '/*-----------------------------------------------------------------------------
    '//
    '//功能：EdsSetCameraStateEventHandler
    '//
    '//说明：
    '//为相机的属性状态变化通知事件注册一个回调函数接收状态。
    '//
    '//参数：
    '//In：inCameraRef - 指定相机对象。
    '// inEvent - 指定一个或加以补充的所有事件。
    '//          指定的所有事件，使用kEdsStateEvent_All。
    '// inStateEventHandler - 指定的回调函数的指针
    '//                 接收到相机对象国相关的事件。
    '// inContext - 指定应用程序要传递的信息
    '//             通过回调函数。所需的任何数据
    '//             可以通过您的应用程序。
    '//Out：无
    '//
    '//返回：SDK中的任何错误。
    '------------------------------------------------- ----------------------------*/
    Public Declare Function EdsSetCameraStateEventHandler Lib "EDSDK" ( _
        ByVal inCameraRef As IntPtr, _
        ByVal inEvnet As Integer, _
        ByVal inStateEventHandler As EdsStateEventHandler, _
        ByVal inContext As IntPtr) As Integer

End Module
