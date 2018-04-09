//
//  ViewController.m
//  Sort
//
//  Created by duodian on 2018/4/9.
//  Copyright © 2018年 丁远帅. All rights reserved.
//

#import "ViewController.h"
#import "SortUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SortUtil buddleSort:[NSMutableArray arrayWithArray:@[@3,@4,@2,@1]]];
    
    [SortUtil insertSort:[NSMutableArray arrayWithArray:@[@3,@4,@2,@1]]];
}

@end
