//
//  NSDictionary+Additions.h
//  MZFramework
//
//  Created by Nick on 15-3-27.
//  Copyright (c) 2015年 Nick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDictionary (Additions)

- (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (time_t)getTimeValueForKey:(NSString *)key defaultValue:(time_t)defaultValue;
- (long)getLongValueForKey:(NSString *)key  defaultValue:(long)defaultValue;
- (long long)getLongLongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (double)getDoubleValueForKey:(NSString *)key defaultValue:(double )defaultValue;
- (NSArray *) getArrayValueForKey:(NSString *) key defaultValue:(NSArray *)defaultValue;
- (NSDictionary *) getDictionaryForKey:(NSString *) key defaultValue:(NSDictionary *)defaultValue;

//JSON字符串转换为NSDicitonary
- (NSDictionary *) getDictionaryForString:(NSString *)key;

- (NSString *) getStringTwoDecimal:(NSString *)key;

- (id)objectForSafeKey:(NSString*)key;
@end
