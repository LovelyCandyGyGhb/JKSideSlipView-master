//
//  ThirdViewController.m
//  JKSideSlipView
//
//  Created by 葛宏兵 on 15/11/5.
//  Copyright © 2015年 www.skyfox.org. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
    [button setTitle:@"返回" forState:(UIControlStateNormal)];
    button.frame = CGRectMake(20, 100, 100, 30);
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(back:) forControlEvents:(UIControlEventTouchUpInside)];
    
}
-(void)back:(UIButton *)button
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
