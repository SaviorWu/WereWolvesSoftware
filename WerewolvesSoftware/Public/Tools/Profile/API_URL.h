//
//  API_URL.h
//  SchoolContacts
//
//  Created by 周子涵 on 16/7/19.
//  Copyright © 2016年 SKY. All rights reserved.
//


/*!
 *  @author Friend.Wu, 16-10-20 14:50:01
 *
 *  @brief 接口版本号w
 */
#define INTERFACE_VERSION   @"3.0.1"
static BOOL JPUSH_ISPRODUCTION = NO; // 是否为发布模式

/**
 Mock接口
 */
#define MOCK_Address        @"http://59.110.153.248:1024"

/**
 开发服
 */
//#define URL_Address                 @"http://192.168.1.241:8080"        //开发服务器
//#define UPLOAD_FILE_ADDRESS         @"http://192.168.1.15:8080/lanzhong-resourse-server/filesUpload"    // 开发服文件上传接口
//#define IMAGE_PATH                  @"http://file.xsftest.com:66"       //开发服文件服务

/**
 测试服
 */
//#define URL_Address                 @"http://api3.xsftest.com:88"       //测试服
//#define UPLOAD_FILE_ADDRESS         @"http://192.168.1.15:8080/lanzhong-resourse-server/filesUpload"    // 测试服文件上传接口
//#define IMAGE_PATH                  @"http://file.xsftest.com:66"       //测试服文件服务

/**
 预发布
 */
//#define URL_Address                 @"https://api3test.xsfapp.com"             //预发布服务器
//#define UPLOAD_FILE_ADDRESS         @"http://upload.xsfapp.com/filesUpload"     // 预发布文件上传接口
//#define IMAGE_PATH                  @"http://file.xsfapp.com"                   //预发布文件服务

/**
 正式服
 */
#define URL_Address                 @"https://api3.xsfapp.com"
#define UPLOAD_FILE_ADDRESS         @"http://upload.xsfapp.com/filesUpload"
#define IMAGE_PATH                  @"http://file.xsfapp.com"

//#define URL_Address                 @"http://192.168.1.130:8080"       //陈驰
//#define URL_Address                 @"http://192.168.1.148:8080"       //陈驰


//#define URL_Address                 [XSFNetworkAddress getInstance].urlAddress              //服务器地址
//#define UPLOAD_FILE_ADDRESS         [XSFNetworkAddress getInstance].uploadFileAddress       //文件上传接口地址
//#define IMAGE_PATH                  [XSFNetworkAddress getInstance].imagepath               //文件服务地址
