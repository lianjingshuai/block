//
//  OneView.m
//  black回调
//
//  Created by 连京帅 on 16/7/7.
//  Copyright © 2016年 LJS. All rights reserved.
//

#import "OneView.h"


@implementation OneView 

// 方法1
- (void)stringA:(NSString *)str stringB:(void(^)(NSString *string))stringb {
    
    // 这里有一大串代码执行
    
    
    // 执行完了之后得到了这个字符串 然后把这个字符串回调回去
    NSString *stringsdaf = @"什么个情况";
    stringb(stringsdaf);
    
}

// 方法2
- (void)stringL:(BOOL)booll stringF:(void (^)(NSString *))stringf failure:(void (^)(NSError *))failure {
    
    
    if (booll) {
        
        stringf(@"回调一个字符串");
        
    }else {
        
        CustomError *error=[[CustomError alloc]initWithDomain:@"" code:100000 userInfo:nil localizedDescription:@"请求数据出错了"];
        failure(error);
        
    }
    
}

@end
