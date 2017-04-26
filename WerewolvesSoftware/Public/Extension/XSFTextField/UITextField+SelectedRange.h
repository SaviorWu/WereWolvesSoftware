//
//  UITextField+SelectedRange.h
//  MiaoZhuan
//
//  Created by 裴勇 on 16/5/20.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (SelectedRange)

- (NSRange)selectedRange;
- (void)setSelectedRange:(NSRange)range;

@end
