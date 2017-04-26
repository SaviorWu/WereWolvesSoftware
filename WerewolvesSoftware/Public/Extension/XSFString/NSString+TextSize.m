//
//  NSString+TextSize.m
//  MiaoZhuan
//
//  Created by 朱家权 on 16/5/3.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import "NSString+TextSize.h"

@implementation NSString (TextSize)

//- (CGSize)textSizeWithFont:(UIFont *)font
//{
//    CGSize textSize;
//    
//    NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
//    textSize = [self sizeWithAttributes:attributes];
//    
//    return textSize;
//}
//
//- (CGSize)textSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode
//{
//    CGSize textSize;
//    if (CGSizeEqualToSize(size, CGSizeZero)) {
//        NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
//        textSize = [self sizeWithAttributes:attributes];
//    }
//    else {
//        NSStringDrawingOptions option = (NSStringDrawingTruncatesLastVisibleLine |
//                                         NSStringDrawingUsesLineFragmentOrigin |
//                                         NSStringDrawingUsesFontLeading);
//        NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
//        CGRect rect = [self boundingRectWithSize:size options:option attributes:attributes context:nil];
//        textSize = rect.size;
//    }
//    return textSize;
//}

@end
