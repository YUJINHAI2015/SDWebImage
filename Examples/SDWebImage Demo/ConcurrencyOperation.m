//
//  ConcurrencyOperation.m
//  SDWebImage Demo
//
//  Created by yujinhai on 2021/2/3.
//  Copyright © 2021 Dailymotion. All rights reserved.
//

#import "ConcurrencyOperation.h"

@interface ConcurrencyOperation()

@property (assign, nonatomic, getter = isExecuting) BOOL executing;
@property (assign, nonatomic, getter = isFinished) BOOL finished;

@end

@implementation ConcurrencyOperation

@synthesize executing = _executing;
@synthesize finished = _finished;

// 初始化数据
- (instancetype)initWithString:(NSString *)value {

    self = [super init];
    if (self) {
        self.executing = NO;
        self.finished = NO;
    }
    return self;
}
 
- (void)start {

    if ([self isCancelled])
    {
        self.finished = YES;
        return;
    }
    self.executing = YES;
}
 
- (void)setFinished:(BOOL)finished {
    [self willChangeValueForKey:@"isFinished"];
     _finished = YES;
    [self didChangeValueForKey:@"isFinished"];
}
- (void)setExecuting:(BOOL)executing {
    [self willChangeValueForKey:@"isExecuting"];
    _executing = YES;
    [self didChangeValueForKey:@"isExecuting"];
}
- (BOOL)isConcurrent {
    return YES;
}
@end
