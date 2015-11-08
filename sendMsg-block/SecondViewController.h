//
//  SecondViewController.h
//  sendMsg-block
//
//  Created by 黄海燕 on 15/11/8.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

//定义一个block，参数为字符串
typedef void (^ablock)(NSString *str);
@property (nonatomic, copy) ablock block;

@end
