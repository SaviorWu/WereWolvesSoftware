//
//  MyShareClass.m
//  XSF
//
//  Created by duck on 16/10/13.
//  Copyright © 2016年 dom.duck. All rights reserved.
//

#import "MySharedClass.h"
#import <objc/runtime.h>
#import "AppDelegate.h"
#import "TabBarController.h"
@implementation MySharedClass
static  NSArray* arrEncodeList;
//实例
+(instancetype)getInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
        arrEncodeList    = [NSArray arrayWithObjects:
                            @"Auth/Login",
                            nil];
    });
    return sharedInstance;
}

+(NSString*)getFramework2RequestURL
{
    return URL_Address;
}
+(NSString*)getEncryptionKey
{
    return ENCRYPTION_DECODE_KEY;
}
+(NSString*)getTokenKey
{
    return CREATETOKEN_DECODE_KEY;
}
+ (void)setModel:(Class)classModel
{
    id Data = self;
    if ([Data isKindOfClass:[NSArray class]])
    {
        if ([Data count] != 0)
        {
            NSArray*    arrData = (NSArray*)Data;
            NSMutableArray* arr = (NSMutableArray*)self;
            NSInteger   iLoopCount  = [arrData count];
            for (int iLoop = 0; iLoop < iLoopCount; iLoop++)
            {
                id OCClass = [classModel new];
                [OCClass GetJsonData:[arrData objectAtIndex:iLoop]];
                [arr replaceObjectAtIndex:iLoop withObject:OCClass];
            }
        }
    }
}
+ (BOOL)checkLogin:(UIViewController*)FromNavigation
{
    
    return YES;
}
+ (BOOL)businessCheck:(NSString*)storeAuthStatus From:(UIViewController*)FromNavigation
{
    
    return YES;
}

+ (BOOL)realNameCheck:(UIViewController*)FromNavigation
{
    
    return YES;
}
+ (void)runtimePush:(NSDictionary*)dic From:(UIViewController*)vc
{
    @try
    {
        if ([[dic allKeys] containsObject:@"ClassName"])
        {
            NSString*   className   = [dic objectForKey:@"ClassName"];
            NSDictionary*    dicData     = [dic objectForKey:@"ParamList"];
            Class Template = NSClassFromString(className);
            if (Template != nil)
            {
                // 对象类存在
                SEL sel = NSSelectorFromString(@"init");
                if (sel != nil)
                {
                    id  OCClass = [Template new];
                    for (int iLoop = 0; iLoop < [[dicData allKeys] count]; iLoop++)
                    {
                        NSString*   ClassMemberName = [[dicData allKeys] objectAtIndex:iLoop];
                        NSString*   MemberValue     = [dicData objectForKey:ClassMemberName];
                        ClassMemberName = [NSString stringWithFormat:@"_%@",ClassMemberName];
                        Ivar ivar       = class_getInstanceVariable([OCClass class], [ClassMemberName UTF8String]);
                        const char *MemberType = ivar_getTypeEncoding(ivar);
                        NSString *TypeTag =  [NSString stringWithCString:MemberType encoding:NSUTF8StringEncoding];
                        if (![TypeTag hasPrefix:@"@"])
                        {
                            if([TypeTag isEqualToString:@"c"])
                            {
                                // bool变量
                                if (MemberValue)
                                {
                                    if (MemberValue == 0)
                                        [OCClass setValue:@(NO) forKey:ClassMemberName];
                                    else
                                        [OCClass setValue:@(YES) forKey:ClassMemberName];
                                }
                            }
                            else
                            {
                                if (MemberValue)
                                    [OCClass setValue:[NSString stringWithFormat:@"%@",MemberValue] forKey:ClassMemberName];
                            }
                        }
                        else
                        {
                            if (ivar)
                                object_setIvar(OCClass, ivar, MemberValue);
                        }
                        
                    }
                    
                    
                    if (vc)
                    {
                        [vc.navigationController pushViewController:[OCClass performSelector:sel] animated:YES];
                    }
                    else
                    {
                        if (![MySharedClass getInstance].navigationController)
                        {
                            [self performSelector:@selector(push:) withObject:[OCClass performSelector:sel] afterDelay:6];
                        }
                        else
                            [[MySharedClass getInstance].navigationController pushViewController:[OCClass performSelector:sel] animated:YES];
                    }
                }
            }
            else
            {
                // 对象类不存在
            }
        }
    }@catch (NSException * e) {
        NSLog(@"Exception: %@", e);
        return;
    }
}
+ (void)push:(id)vc
{
    [[MySharedClass getInstance].navigationController pushViewController:vc animated:YES];
}
+(NSString*)getToken
{
    return @"";
}
+(NSString*)getUserSign
{
    return @"";
}
+(NSString*)getNetWorking
{
    return @"";
}
+(NSString*)getInterfaceVerion
{
    return INTERFACE_VERSION;
}
+(NSString*)getDeviceVersion
{
    return INTERFACE_VERSION; //[UserInfo getInstance].appVersion.length != 0?[UserInfo getInstance].appVersion:@"";
}

+(NSString*)getViewType
{
    return @"21";
}
+(NSString*)getDeviceCode
{
    return @"";
}
+(NSString*)getSysVersion
{
    return @"";
}
+(NSString*)getLng
{
    return @"";
}
+(NSString*)getLat
{
    return @"";
}
+(NSString*)getUserID
{
    return @"";
}
+(NSString*)getAppversion
{
    return @"";
}
+(NSString*)getUp
{
    return @"";
}
+(NSString*)getUc
{
    return @"";
}
+(NSString*)getUd
{
    return @"";
}
+(void)resetUserInfo
{
//    [UserInfo reset];
}
@end
