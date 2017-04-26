//
//  NetWorkPraseOperation.h
//  MiaoZhuan
//
//  Created by Friend.Wu on 16/04/05.
//  Copyright (c) 2016年 MiaoZhuan. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface NetworkOperation : NSObject
/*!
 *  @author Friend.Wu, 16-04-05 16:04:15
 *
 *  @brief Framework2.0以后的请求类统一调用接口
 *  @参数解析：
 *          ①className：处理数据模型的数据逻辑处理类名         传nil或者@“”默认为BaseModalCtrl
 *          ②Paramter：请求接口的所带参数（可为字典或者单个值）  无值传nil
 *          ③strMethod：方法名，主要对应的是后台的接口名称      请求接口必填参数
 *          ④reqURL：请求URL地址，方便用于URL地址切换开发       默认nil为宏URL_Address
 *          ④opera：请求方式，这里只支持为POST或者GET         传@“”或nil默认为GET
 *  @返回值void
 */
// 此方法用于业务代码全局调用
+ (void)PraseModalController:(NSString*)className
                withParamter:(id)Paramter
                  withMethod:(NSString*)strMethod
               withOperation:(NSString*)opera
                  withReqURL:(NSString*)reqURL
                    hubHiden:(BOOL)bHiden
                     Success:(void (^)(id praseResult))successBlock;

/**
 文件上传方法
 
 @param url           文件上传url地址
 @param data          上传数据NSData数据
 @param fileType      文件类型 @"image"或者@“mp4”
 @param BusinessOpera 业务操作类型字符串标记值
 @param ProgressBlock 进度跟中block，用于在UI展示上传进度的功能
 @param success       上传成功block
 @param failure       上传失败block
 
 @return 上传现成对象
 */
+ (void)PraseUpload:(NSString *)url
        UploadArray:(NSArray *)data
     UploadFileType:(NSString*)fileType
      BusinessOpera:(NSString*)oper
UpLoadProgressBlock:(void (^)(float Progress))ProgressBlock
  UpLoadWithSuccess:(void (^)(id result))success
  UpLoadWithFailure:(void (^)(NSError *error))failure;


/**
 网络地址请求，用于单独请求三方的其他网站

 @param addressURL 网站地址
 @param oper Get或者Post方法
 @param param 请求参数
 @param success 成功返回block
 */
+ (void)RequestURL:(NSString*)addressURL
         withOpera:(NSString*)oper
         withParam:(id)param
           Success:(void (^)(id result))success;

//// 此方法用于测试单独加密接口的时候调用
//+ (void)RSAPraseModalController:(NSString*)className
//                   withParamter:(id)Paramter
//                     withMethod:(NSString*)strMethod
//                  withOperation:(NSString*)opera
//                     withReqURL:(NSString*)reqURL
//                        Success:(void (^)(id praseResult))successBlock;
+ (NSString*)operaParam:(id)Paramter;
@end
