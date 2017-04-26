//
//  MyShareClass.h
//  XSF
//
//  Created by duck on 16/10/13.
//  Copyright © 2016年 dom.duck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySharedClass : NSObject
+(instancetype)getInstance;

/*!
*  @opration    Create
 *  @author      Friend.Wu
 *
 *  @brief      此变量用于保存当前页面处于哪个tabbar的navigationviewcontroller之下
 *  @参数解析：
 */
@property (nonatomic, strong) UINavigationController* navigationController;
/**
 接口参数
 */
@property (nonatomic, strong) id interfaceValue;
/*!
 *  @opration    Create
  *  @author      Friend.Wu
  *
  *  @brief     用户返回网络请求的url地址
  *  @参数解析：
  */
+(NSString*)getFramework2RequestURL;

/*!
 *  @opration    Create
  *  @author      Friend.Wu
  *
  *  @brief     用户返回加密的key
  *  @参数解析：
  */
+(NSString*)getEncryptionKey;

/*!
 *  @opration    Create
  *  @author      Friend.Wu
  *
  *  @brief     用户返回token创建的key
  *  @参数解析：
  */
+(NSString*)getTokenKey;
+ (BOOL)checkLogin:(UIViewController*)FromNavigation;
+ (BOOL)realNameCheck:(UIViewController*)FromNavigation;
+ (BOOL)businessCheck:(NSString*)storeAuthStatus From:(UIViewController*)FromNavigation;
/**
 以下函数为http包头中所包含的信息返回

 @return 所需内容的字符串形式值
 */
+(NSString*)getToken;
+(NSString*)getUserSign;
+(NSString*)getNetWorking;
+(NSString*)getInterfaceVerion;
+(NSString*)getDeviceVersion;
+(NSString*)getViewType;
+(NSString*)getDeviceCode;
+(NSString*)getSysVersion;
+(NSString*)getLng;
+(NSString*)getLat;
+(NSString*)getUp;
+(NSString*)getUc;
+(NSString*)getUd;
+(NSString*)getUserID;
+(NSString*)getAppversion;
+(void)resetUserInfo; // 用户被挤下线后重置用户信息
+ (void)runtimePush:(NSDictionary*)dic From:(UIViewController*)vc;
@end
