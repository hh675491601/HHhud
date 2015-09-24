//
//  ViewController.m
//  CustonHud
//
//  Created by hehao on 15/9/24.
//  Copyright © 2015年 kuaifa. All rights reserved.
//

#import "ViewController.h"
#import "HudViewController.h"
static BOOL isShow;
@interface ViewController ()
@property(nonatomic,strong)UIView *bottomView;
@property(nonatomic,strong)UILabel *bottomLab;
@property(nonatomic,strong)NSTimer *timer;
@property(nonatomic,strong)UIImageView *imgView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[HudViewController sharedClient] createCustomHudWithSuperView:self.view andLoadText:@"加载中..."];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 50, 50);
    btn.backgroundColor = [UIColor yellowColor];
    [btn setTitle:@"click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)click
{
    if (isShow == YES)
    {
        [[HudViewController sharedClient] createCustomHudWithSuperView:self.view andLoadText:@"加载中..."];
    }
    else
    {
        [[HudViewController sharedClient] hideThisHud];
    }
    isShow = !isShow;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
