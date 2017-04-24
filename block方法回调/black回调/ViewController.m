//
//  ViewController.m
//  black回调
//
//  Created by 连京帅 on 16/7/7.
//  Copyright © 2016年 LJS. All rights reserved.
//

#import "ViewController.h"
#import "OneView.h"

@interface ViewController ()

@property (nonatomic, strong)OneView *oneview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建view
    _oneview = [[OneView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    _oneview.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_oneview];
    
    
    
    
    
#warning 方法一👇👇👇👇👇👇👇
    [_oneview stringA:@"传值" stringB:^(NSString *string) {
        
        // 打印一下回调回来的值
        NSLog(@"%@",string);
        
    }];
#warning 方法一👆👆👆👆👆👆👆
    
    
    
    
    
    

#warning 方法二👇👇👇👇👇👇👇
    [_oneview stringL:NO stringF:^(NSString *string) {
        
        NSLog(@"%@",string);
        
    } failure:^(NSError *requesErr) {
        
        NSLog(@"%@",requesErr.localizedDescription);
        
    }];
#warning 方法二👆👆👆👆👆👆👆

    
    
    
}




@end
