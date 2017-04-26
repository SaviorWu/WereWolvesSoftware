//
//  BaseInfo.h
//  XSF
//
//  Created by duck on 16/11/29.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BaseInfo : NSObject
@property (nonatomic, strong) NSMutableDictionary       *DictionaryItemListForText;   // 全局使用的文本字典
@property (nonatomic, strong) NSMutableArray            *provincesList;
@property (nonatomic, strong) NSMutableArray            *citiesList;
@property (nonatomic, strong) NSMutableArray            *areasList;
@property (nonatomic, strong) NSString                  *provinceName;
@property (nonatomic, strong) NSString                  *cityName;
@property (nonatomic, strong) NSString                  *areaName;
@property (nonatomic, strong) NSString                  *formattedAddress;//详细地址
@property (nonatomic, strong) NSString                  *address;//地址

+ (instancetype)getInstance;
@end
