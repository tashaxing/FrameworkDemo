//
//  ViewController.m
//  FrameWorkUseTest
//
//  Created by yxhe on 16/7/6.
//  Copyright © 2016年 yxhe. All rights reserved.
//

#import "ViewController.h"
// 引入framework的头文件
#import <FrameworkTest/Compute.h>
#import <FrameworkTest/Print.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)onClick:(id)sender
{
    Compute *compute = [[Compute alloc] init];
    NSInteger sum = [compute addNumber:7 withNumber:5];
    Print *print = [[Print alloc] init];
    [print printWords:[NSString stringWithFormat:@"7 + 5 = %ld", (long)sum]];
    _numberLabel.text = [NSString stringWithFormat:@"7 + 5 = %ld", (long)sum];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
