//
//  NSString+RegexRules.m
//  MiaoZhuan
//
//  Created by 朱家权 on 16/5/9.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import "NSString+RegexRules.h"

// static NSString *const REGEX_RELES_TEL = @"(([0-9]{4}|[0-9]{3})([0-9]{8}|[0-9]{7})$)";
static NSString *const REGEX_RELES_TEL = @"(([0-9]{8}|[0-9]{12})$)";
static NSString *const REGEX_RELES_MOBILE_PHONE = @"(1(3|4|5|7|8)[0-9]{9}$)";

@implementation NSString (RegexRules)

- (BOOL)isValidTel{
    return ([self rangeOfString:REGEX_RELES_TEL options:NSRegularExpressionSearch].location != NSNotFound);
}

- (BOOL)isMobilePhone {
    return ([self rangeOfString:REGEX_RELES_MOBILE_PHONE options:NSRegularExpressionSearch].location != NSNotFound);
}

//- (BOOL)isMobilePhone
//{
//    if (self.length < 11 && self.length > 11) {
//        return NO;
//    }
//    NSString*   firstNum    = [self substringToIndex:1];
//    if ([firstNum integerValue] != 1) {
//        return NO;
//    }
//    NSString*   secondNum   = [[self substringToIndex:2] substringFromIndex:1];
//    if ([secondNum integerValue] != 3 &&
//        [secondNum integerValue] != 4 &&
//        [secondNum integerValue] != 5 &&
//        [secondNum integerValue] != 7 &&
//        [secondNum integerValue] != 8) {
//        return NO;
//    }
//    return YES;
//}

@end
