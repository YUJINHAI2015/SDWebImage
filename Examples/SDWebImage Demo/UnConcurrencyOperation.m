//
//  UnConcurrencyOperation.m
//  SDWebImage Demo
//
//  Created by yujinhai on 2021/2/3.
//  Copyright © 2021 Dailymotion. All rights reserved.
//

#import "UnConcurrencyOperation.h"

@implementation UnConcurrencyOperation

// 初始化数据
- (instancetype)initWithString:(NSString *)value {
    if (self = [super init]) {
        
    }
    return self;
}
// 自动调用main函数，执行操作。
- (void)main {
    [NSThread sleepForTimeInterval:1];
    NSLog(@"-- %s -- %@",__func__, [NSThread currentThread]);
}
@end
