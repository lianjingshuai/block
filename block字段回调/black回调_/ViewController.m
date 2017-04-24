//
//  ViewController.m
//  black回调_
//
//  Created by 连京帅 on 16/8/18.
//  Copyright © 2016年 YunDongHui. All rights reserved.
//
//宏
#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "OneViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:0.787 green:1.000 blue:0.961 alpha:1.000];
    
    
#warning 把一个ViewController添加到另一个ViewController上面
    OneViewController *One = [[OneViewController alloc] init];
    One.title = @"ViewController";
    [self addChildViewController:One];
    One.view.frame = CGRectMake(50, 50, screen_width-100, screen_height-100);
    [self.view addSubview:One.view];
    
#warning black回调👇👇👇👇👇👇👇
    One.IndexPathRow = ^(NSInteger index) {
        
        NSLog(@"index:%ld",(long)index);
        
    };
#warning black回调👆👆👆👆👆👆👆
}

@end
