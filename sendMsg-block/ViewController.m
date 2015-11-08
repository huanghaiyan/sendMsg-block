//
//  ViewController.m
//  sendMsg-block
//
//  Created by 黄海燕 on 15/11/8.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
{
    
    __weak IBOutlet UILabel *_label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushNexxt:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
    //在viewController试图显示，回调block
    secondVC.block = ^(NSString *str){
        _label.text = str;
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
