//
//  NSString+RegexRules.h
//  MiaoZhuan
//
//  Created by 朱家权 on 16/5/9.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RegexRules)

- (BOOL)isValidTel;
- (BOOL)isMobilePhone;
@end
