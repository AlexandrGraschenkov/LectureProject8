//
//  ViewController.m
//  TestBlocks
//
//  Created by Alexander on 10.04.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import <BlocksKit.h>


@interface ViewController ()
@property (nonatomic, copy) int(^sum)();
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    BOOL(^isOdd)(int) = ^BOOL(int val){
        return val % 2 == 1;
    };
    
    __block NSNumber *a = @3, *b = @4;
    int(^sum)() = ^int{
        return a.intValue + b.intValue;
    };
//    NSLog(@"%d", sum());
//    a = @6;
//    NSLog(@"%d", sum());
//    NSLog(@"%d", [self runBlock:sum]);
    
    NSArray *arr = @[@1, @2, @3];
    for(NSNumber *elem in arr){
        NSLog(@"%@", elem);
    }
    for(int i = 0; i < arr.count; i++){
        NSLog(@"%@", arr[i]);
    }
    
    
    
    
    
    
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
     {
         if([obj intValue] == 2)
             *stop = YES;
         if([obj intValue] == 2)
             *stop = NO;
        NSLog(@"%@", obj);
        if([obj intValue] == 2)
            *stop = YES;
    }];
}

- (int)runBlock:(int(^)())sum
{
    return sum();
}


@end
