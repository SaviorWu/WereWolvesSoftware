//
//  BaseInfo.m
//  XSF
//
//  Created by duck on 16/11/29.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "BaseInfo.h"

static BaseInfo *getInstance = nil;
@implementation BaseInfo
+ (instancetype)getInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!getInstance)
        {
            getInstance = [[BaseInfo alloc] init];
        }
    });
    return getInstance;
}
-(instancetype)init{
    if (self = [super init])
    {
        self.DictionaryItemListForText  = [[NSMutableDictionary alloc] init];
        self.provincesList = [NSMutableArray array];
        self.citiesList = [NSMutableArray array];
        self.areasList = [NSMutableArray array];
        self.provinceName = @"";
        self.cityName = @"";
        self.areaName = @"";
    }
    return self;
}
@end
