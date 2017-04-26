//
//  XsfEncryption.h
//  XSF
//
//  Created by duck on 15/7/15.
//  Changed by Friend.Wu
//  Copyright (c) 2015年 dom.duck. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *加密解密
 */
@interface XsfEncryption : NSObject


/**
 *md5加密
 */
+ (NSString *)md5:(NSString *)inPutText;

/**
 *创建加密的token
 */
+ (NSString *)createToken:(NSString *)tempSign value:(NSDictionary *)tempValue;


/**
 *解密
 */
+ (NSString *)decode:(NSString *)decodeString;


/**
 *加密
 */
+ (NSString *)encode:(NSString *)encodeString;

@end
