//
//  ViewController.m
//  UIViewCornerDemo
//
//  Created by Artron_LQQ on 16/2/20.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "ViewController.h"
#import "UIView+CornerRadius.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *top = [[UIView alloc]initWithFrame:CGRectMake(20, 50, 100, 100)];
    top.backgroundColor = [UIColor redColor];
    [self.view addSubview:top];
    
    [top cornerSideType:kLQQSideTypeTop withCornerRadius:50.f];
    
    UIView *left = [[UIView alloc]initWithFrame:CGRectMake(150, 50, 100, 100)];
    left.backgroundColor = [UIColor greenColor];
    [self.view addSubview:left];
    
    [left cornerSideType:kLQQSideTypeLeft withCornerRadius:10.f];
    
    UIView *right = [[UIView alloc]initWithFrame:CGRectMake(20, 200, 100, 100)];
    right.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:right];
    
    [right cornerSideType:kLQQSideTypeRight withCornerRadius:10.f];
    
    UIView *bottom = [[UIView alloc]initWithFrame:CGRectMake(150, 200, 100, 100)];
    bottom.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:bottom];
    
    [bottom cornerSideType:kLQQSideTypeBottom withCornerRadius:10.f];
    
    UIView *all = [[UIView alloc]initWithFrame:CGRectMake(100, 350, 100, 100)];
    all.backgroundColor = [UIColor blackColor];
    [self.view addSubview:all];
    
    [all cornerSideType:kLQQSideTypeAll withCornerRadius:50.f];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
