//
//  RootViewController.m
//  JKSideSlipView
//
//  Created by Jakey on 15/1/10.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import "RootViewController.h"
#import "MenuView.h"
#import "NextViewController.h"
#import "ThirdViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sideSlipView = [[JKSideSlipView alloc]initWithSender:self];
    _sideSlipView.backgroundColor = [UIColor redColor];
    
    MenuView *menu = [MenuView menuView];
   
//    [menu didSelectRowAtIndexPath:^(id cell, NSIndexPath *indexPath) {
//        NSLog(@"click");
//        [_sideSlipView hide];
//        NextViewController *next = [[NextViewController alloc]init];
//        [self.navigationController pushViewController:next animated:YES];
//    }];
    menu.myBlock = ^(id cell, NSIndexPath *indexPath){
        NSLog(@"click");
        
        if (indexPath.row == 3) {
             [_sideSlipView hide];
            ThirdViewController *mainVC = [[ThirdViewController alloc]init];
            [self.navigationController pushViewController:mainVC animated:YES];
        }else{
            [_sideSlipView hide];
            NextViewController *next = [[NextViewController alloc]init];
            [self.navigationController pushViewController:next animated:YES];
        }
        
    };
    menu.items = @[@{@"title":@"1",@"imagename":@"1"},@{@"title":@"2",@"imagename":@"2"},@{@"title":@"3",@"imagename":@"3"},@{@"title":@"4",@"imagename":@"4"}];
    [_sideSlipView setContentView:menu];   //将menu加到_sildeView里(前图后透明)
    [self.view addSubview:_sideSlipView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)switchTouched:(id)sender {
    [_sideSlipView switchMenu];
    
}
@end
