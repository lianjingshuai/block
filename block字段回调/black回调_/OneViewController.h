//
//  OneViewController.h
//  black回调_
//
//  Created by 连京帅 on 16/8/18.
//  Copyright © 2016年 YunDongHui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OneViewController : UIViewController

#warning black方法👇👇👇👇👇👇👇
@property (nonatomic, copy) void(^IndexPathRow)(NSInteger index);
#warning black方法👆👆👆👆👆👆👆

@end
