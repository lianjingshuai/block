//
//  OneView.h
//  black回调
//
//  Created by 连京帅 on 16/7/7.
//  Copyright © 2016年 LJS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomError.h"

@interface OneView : UIView


// 方法1
- (void)stringA:(NSString *)str stringB:(void(^)(NSString *string))stringb;


// 方法2
- (void)stringL:(BOOL)booll stringF:(void(^)(NSString *string))stringf failure:(void(^)(NSError *requesErr))failure;

@end
