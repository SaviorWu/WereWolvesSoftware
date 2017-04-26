//
//  BaseModelCtrl.h
//  MZFramework2
//
//  Created by 吴友鹏 on 16/4/5.
//  Copyright © 2016年 MiaoZhuan. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 *  @author Friend.Wu, 16-04-05 16:04:15
 *
 *  @brief Framework2.0以后的数据modal的基础父类继承此类
 *         此类默认返回处理成功和失败以及消息提示
 *  @返回值DIC
 *         ：默认返回dic
 *          ①：获取结果code 使用 [dic objectForKey:@"Code"]; 默认值为0
 *          ②：获取结果msg 使用 [dic objectForKey:@"Desc"];   默认值为0
 Code = 10001;
 Desc = "\U7c7b\U578b\U53c2\U6570\U4f20\U5165\U9519\U8bef";
 IsSuccess = 0;
 获取解析数据关键字 [dic objectForKey:@"Data"];
 *  @特别注意：在继承BaseModelCtrl以后需要重写方法 
 *          ①：此处的result为需要处理的数据源
 *          ②：此处的返回为处理完成后的model结构体
 *  + (id)PraseCallBack:(id)result
 */
@interface BaseModelCtrl : NSObject
+ (NSDictionary*)PraseOperation:(id)result;
@end
