//
//  NSDictionary+Additions.m
//  MZFramework
//
//  Created by Nick on 15-3-27.
//  Copyright (c) 2015年 Nick. All rights reserved.
//

#import "NSDictionary+Additions.h"


@implementation NSDictionary (Additions)

- (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue {
    return [self objectForKey:key] == [NSNull null] ? defaultValue
    : [[self objectForKey:key] boolValue];
}

- (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue {
    return [self objectForKey:key] == [NSNull null]
				? defaultValue : [[self objectForKey:key] intValue];
}

- (time_t)getTimeValueForKey:(NSString *)key defaultValue:(time_t)defaultValue {
    NSString *stringTime   = [self objectForKey:key];
    if ((id)stringTime == [NSNull null]) {
        stringTime = @"";
    }
    struct tm created;
    time_t now;
    time(&now);
    
    if (stringTime) {
        if (strptime([stringTime UTF8String], "%a %b %d %H:%M:%S %z %Y", &created) == NULL) {
            strptime([stringTime UTF8String], "%a, %d %b %Y %H:%M:%S %z", &created);
        }
        return mktime(&created);
    }
    return defaultValue;
}

- (long)getLongValueForKey:(NSString *)key  defaultValue:(long)defaultValue
{
    return [self objectForKey:key] == [NSNull null]
    ? defaultValue : [[self objectForKey:key] longValue];
}

- (long long)getLongLongValueForKey:(NSString *)key defaultValue:(long long)defaultValue {
    return [self objectForKey:key] == [NSNull null]
    ? defaultValue : [[self objectForKey:key] longLongValue];
}

- (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue {
    return [self objectForKey:key] == nil || [self objectForKey:key] == [NSNull null] || self == nil
				? defaultValue : [self objectForKey:key];
}
- (double )getDoubleValueForKey:(NSString *)key defaultValue:(double )defaultValue
{
    return [self objectForKey:key] == [NSNull null]
				? defaultValue : [[self objectForKey:key] doubleValue];
}
- (NSArray *) getArrayValueForKey:(NSString *) key defaultValue:(NSArray *)defaultValue
{
    return [self objectForKey:key] == nil || [self objectForKey:key] == [NSNull null]
				? defaultValue : [self objectForKey:key];
}

- (NSDictionary *) getDictionaryForKey:(NSString *) key defaultValue:(NSDictionary *)defaultValue
{
    return [self objectForKey:key] == nil || [self objectForKey:key] == [NSNull null]
    ? defaultValue : [self objectForKey:key];
}

- (NSDictionary *) getDictionaryForString:(NSString *)key {
    
    NSString *jsonString = [self getStringValueForKey:key defaultValue:@""];
    
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        NSLog(@"String 转换为 Dictionary 解析失败：%@",err);
        return nil;
    }
    return dic;
}

- (NSString *) getStringTwoDecimal:(NSString *)key
{
    if([self objectForKey:key] == nil || [self objectForKey:key] == [NSNull null])
        return @"0.00";
    
    NSString *value = [self getStringValueForKey:key defaultValue:@"0.00"];
    
    
    NSLog(@" value value value :%@ ", value);
    
    NSRange range = [value rangeOfString:@"."];
    
    //有小数点
    if(range.length > 0)
    {
        NSString *front = [value substringToIndex:range.location];
        NSString *after = [value substringFromIndex:range.location];
        
        
        //后半部分, 包含小数点 总位数大于等于3位, 实际是小数点后面大于等于2位
        if(after.length >= 3)
        {
            after = [after substringToIndex:3];
        }
        
        //小数点最少两位, 只有.x 跟一位 补一位0
        else if(after.length == 2)
        {
            after = [NSString stringWithFormat:@"%@0",[after substringToIndex:2]];
        }
        
        //小数点最少两位, 只有. 补两位0
        else if(after.length == 1)
        {
            after = [NSString stringWithFormat:@"%@00",[after substringToIndex:1]];
        }
        
        value = [NSString stringWithFormat:@"%@%@", front, after];
    }
    
    //没小数点
    else
    {
        value = [NSString stringWithFormat:@"%@.00", value];
    }
    
    return value;
}
- (id)objectForSafeKey:(NSString*)key
{
    return [[self allKeys] containsObject:key] == YES?[self objectForKey:key]:@"";
}

@end
