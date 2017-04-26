//
//  UploadModule.h
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 模块类型
 */
typedef enum UploadModuleType: NSInteger {
    UploadModuleGodType,            /** -0  神*/
    UploadModuleWolfType,           /** -1  狼*/
    UploadModuleCivilianType,       /** -2  平民*/
    UploadModuleJudgmentType,       /** -3  上帝*/
    UploadModuleResultType,         /** -4  结果*/
    UploadModuleUploadType,         /** -5  上传*/
} UploadModuleType;

typedef enum GodType: NSInteger {
    ProphetType,    /** -0  预言家*/
    WitchType,      /** -1  女巫*/
    HuntsmanType,   /** -2  猎人*/
    IdiotType,      /** -3  白痴*/
    GuardType,      /** -4  守卫*/
} GodType;

@interface UploadModule : NSObject

@property (nonatomic, assign) UploadModuleType      type;       //模型类型
@property (nonatomic, assign) GodType               godType;    //上帝类型

-(instancetype)initWithType:(UploadModuleType)type;

@end
