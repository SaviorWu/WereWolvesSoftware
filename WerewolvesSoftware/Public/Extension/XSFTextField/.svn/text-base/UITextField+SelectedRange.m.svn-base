//
//  UITextField+SelectedRange.m
//  MiaoZhuan
//
//  Created by 裴勇 on 16/5/20.
//  Copyright © 2016年 裴勇 All rights reserved.
//

#import "UITextField+SelectedRange.h"

@implementation UITextField (SelectedRange)

/**
 *  @brief 返回textField的选择范围
 *  @return NSRange
 */
- (NSRange)selectedRange
{
    // 返回textField的选择范围(当没有选择字符时，返回location即为光标位置)
    UITextPosition* beginning = self.beginningOfDocument;
    UITextRange *selectedRange = self.selectedTextRange;
    UITextPosition *selectionStart = selectedRange.start;
    UITextPosition *selectionEnd = selectedRange.end;
    NSInteger location = [self offsetFromPosition:beginning toPosition:selectionStart];
    NSInteger length = [self offsetFromPosition:selectionStart toPosition:selectionEnd];
    return NSMakeRange(location, length); // 获得选择光标在textField的范围
}
/**
 *  @brief 返回textField的选择范围
 *  @param range 选择范围
 */
- (void)setSelectedRange:(NSRange)range
{
    UITextPosition *beginning = self.beginningOfDocument;
    UITextPosition *changeStart = [self positionFromPosition:beginning offset:range.location];
    UITextPosition *changeEnd = [self positionFromPosition:beginning offset:range.location+range.length];
    UITextRange *newSelectionRange = [self textRangeFromPosition:changeStart toPosition:changeEnd];
    [self setSelectedTextRange:newSelectionRange];
    
}
@end
