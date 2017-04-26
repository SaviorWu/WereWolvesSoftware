//
//  Tools.m
//  XSF
//
//  Created by sky on 2016/10/28.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "Tools.h"

@implementation Tools
+(void)makePhoneCall:(NSString*)phoneNumber{
    NSString *tel = [NSString stringWithFormat:@"tel://%@",phoneNumber];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:tel]];
}
+(id)LoadXibFile:(NSString*)fileName
{
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:fileName owner:nil options:nil];
    return [nibContents lastObject];
}
+(NSArray*)getArrayFromplistFile:(NSString*)fileName
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
    return [[NSArray alloc] initWithContentsOfFile:plistPath];
}
+(NSMutableArray*)getMutableArrayFromplistFile:(NSString*)fileName
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
    return [[NSMutableArray alloc] initWithContentsOfFile:plistPath];
}
+(void)hiddenKeyBroad
{
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}

+(NSString *)URLEncodedString:(NSString *)str
{
    NSString *encodedString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                              (CFStringRef)str,
                                                              NULL,
                                                              (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                              kCFStringEncodingUTF8));
    
    return encodedString;
}
+(NSString *)URLDecodedString:(NSString *)str
{
    NSString *decodedString=(__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge CFStringRef)str, CFSTR(""), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    return decodedString;
}
@end
