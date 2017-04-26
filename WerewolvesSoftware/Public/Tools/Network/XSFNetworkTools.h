//
//  XSFNetworkTools.h
//  XSF
//
//  Created by sky on 2016/11/1.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^NetworkSuccess)(id object);

@interface XSFNetworkTools : NSObject
#pragma mark - 首页
/**
 主界面
 
 @param dic     请求字典 字段	    数据类型	加密	描述
 userId	String	是	用户Id，未登录用户-1
 lng	    Double	否	经度，未定位为空
 lat	    Double	否	纬度，未定位为空
 @param success 请求成功返回值
 */
+(void)networkUploadGetUserListWithParam:(NSDictionary*)dic success:(NetworkSuccess)success;
@end
