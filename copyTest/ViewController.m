//
//  ViewController.m
//  copyTest
//
//  Created by liquangang on 2017/3/29.
//  Copyright © 2017年 必要. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self copyTest];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 私有方法

- (void)copyTest{
    NSArray *tempArray = @[@"1", @"2", @"3", @"4", @"5"];
    NSMutableArray *tempMuArray = [NSMutableArray array];
    [tempMuArray addObjectsFromArray:tempArray];
    NSMutableArray *tempCopyMuArray = [tempMuArray mutableCopy];
    
    NSLog(@"tempMuArray: %p %x %@", tempMuArray, &tempMuArray, tempMuArray);
    NSLog(@"tempCopyMuArray: %p %x %@", tempCopyMuArray, &tempCopyMuArray, tempCopyMuArray);
    
    [tempCopyMuArray addObject:@"6"];
    NSLog(@"tempMuArray: %p %x %@", tempMuArray, &tempMuArray, tempMuArray);
    NSLog(@"tempCopyMuArray: %p %x %@", tempCopyMuArray, &tempCopyMuArray, tempCopyMuArray);
    
}

#pragma mark - 懒加载

@end
