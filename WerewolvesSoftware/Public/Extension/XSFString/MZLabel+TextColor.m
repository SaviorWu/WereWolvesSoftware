//
//  MZString+TextColor.m
//  MiaoZhuan
//
//  Created by 吴友鹏 on 16/4/28.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import "MZLabel+TextColor.h"
#import "RRAttributedString.h"
@implementation UILabel(TextColor)

- (void)setColor:(UIColor*)color
{
    NSAttributedString *statusStringAttr= [RRAttributedString setText:self.text
                                                                 font:[self font]
                                                                color:color
                                                                range:NSMakeRange(0, self.text.length)
                                           ];
    self.attributedText = statusStringAttr;
}

- (void)setPreviousColor:(UIColor*)color withKey:(NSString*)key
{
    NSRange range = [self.text rangeOfString:key];
    NSAttributedString *statusStringAttr= [RRAttributedString setText:self.text
                                                                 font:[self font]
                                                                color:color
                                                                range:NSMakeRange(0, self.text.length - range.length)
                                           ];
    self.attributedText = statusStringAttr;
}
- (void)setMiddleColor:(UIColor*)color withKey:(NSString*)key
{
    // 设置关键字的颜色
    NSRange range = [self.text rangeOfString:key];
    NSAttributedString *statusStringAttr= [RRAttributedString setText:self.text
                                                                 font:[self font]
                                                                color:color
                                                                range:NSMakeRange(range.location, range.length)
                                           ];
    self.attributedText = statusStringAttr;
}
- (void)setAfterColor:(UIColor*)color withKey:(NSString*)key
{
    NSRange range = [self.text rangeOfString:key];
    NSAttributedString *statusStringAttr= [RRAttributedString setText:self.text
                                                                 font:[self font]
                                                                color:color
                                                                range:NSMakeRange(range.location + range.length, self.text.length)
                                           ];
    self.attributedText = statusStringAttr;
}
@end
