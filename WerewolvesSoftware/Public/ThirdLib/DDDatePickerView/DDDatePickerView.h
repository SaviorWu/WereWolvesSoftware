//
//  DDDatePickerView.h
//  DDDatePicker
//
//  Created by duck on 15/3/11.
//  Copyright (c) 2015年 Duck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDDatePickerView : UIPickerView<UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong, readonly) NSDate *date;
@property (nonatomic, copy) NSString* bHiddenDay; // 是否显示“天”选项
-(void)selectToday;
- (instancetype)initWithFrame:(CGRect)frame withType:(NSString*)type;
@end
