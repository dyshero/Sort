//
//  SortUtil.m
//  Sort
//
//  Created by duodian on 2018/4/9.
//  Copyright © 2018年 丁远帅. All rights reserved.
//

#import "SortUtil.h"

@implementation SortUtil
//插入排序
+ (void)insertSort:(NSMutableArray *)array {
    for (NSInteger i = 1; i < array.count; i ++) {
        NSNumber *temp = array[i];
        NSInteger j;
        for (j = i - 1; j >= 0 && [array[j] compare:temp] == NSOrderedDescending; j --) {
            [array replaceObjectAtIndex:j+1 withObject:array[j]];
        }
        
        [array replaceObjectAtIndex:j+1 withObject:temp];
        
        NSLog(@"%@",array);
    }
    NSLog(@"%@...",array);
}

// 冒泡排序
+ (void)buddleSort:(NSMutableArray *)array {
    for (NSInteger i = 1; i < array.count; i ++) {
        for (NSInteger j = 0; j < array.count - i; j ++) {
            if ([array[j] compare:array[j + 1]] == NSOrderedDescending) {
                [array exchangeObjectAtIndex:j + 1 withObjectAtIndex:j];
            }
        }
        NSLog(@"%@",array);
    }
    
    NSLog(@"buddleSort %@",array);
}





@end
