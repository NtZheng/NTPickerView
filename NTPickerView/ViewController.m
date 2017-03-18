//
//  ViewController.m
//  NTPickerView
//
//  Created by Nineteen on 3/18/17.
//  Copyright © 2017 Nineteen. All rights reserved.
//

#import "ViewController.h"
#import "NTPickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Show" forState:UIControlStateNormal];
    button.frame = CGRectMake(200, 200, 100, 100);
    [button setTitleColor:[UIColor colorWithWhite:0.0 alpha:0.87] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClickAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}
- (void)buttonClickAction {
    NSArray *array = [NSArray arrayWithObjects:@"想要演",@"爱学习",@"要工作",@"玩爱好", nil];
    [NTPickerView showPickerViewAddedTo:self.view
                              dataArray:array
                          confirmAction:^(NSString *string) {
                              NSLog(@"%@",string);
                          } cancelAction:^{
                              
                          } maskClick:^{
                              
                          }];
}

@end
