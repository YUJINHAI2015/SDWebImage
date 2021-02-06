//
//  UnConcurrencyOperation.h
//  SDWebImage Demo
//
//  Created by yujinhai on 2021/2/3.
//  Copyright © 2021 Dailymotion. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnConcurrencyOperation : NSOperation

- (instancetype)initWithString:(NSString *)value;

@end

NS_ASSUME_NONNULL_END
