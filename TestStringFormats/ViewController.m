//
//  ViewController.m
//  TestStringFormats
//
//  Created by Alexander Timonenkov on 01.02.16.
//  Copyright © 2016 ATi Soft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"Test NSUInteger with %%d and %%zd formats...");
    for (NSUInteger i = 0; i <= 10000000; i++) {
        NSString *d = [NSString stringWithFormat:@"%d", i];
        NSString *zd = [NSString stringWithFormat:@"%zd", i];
        if (![zd isEqualToString:d]) {
            NSLog(@"Warning!!! NSUInteger different output for %%d = %d, for %%zd = %zd", i, i);
        }
    }
    NSLog(@"Test NSUInteger with %%u and %%lu formats done");
    
    NSLog(@"Test NSUInteger with %%u and %%lu formats...");
    for (NSUInteger i = 0; i <= 10000000; i++) {
        NSString *u = [NSString stringWithFormat:@"%u", i];
        NSString *lu = [NSString stringWithFormat:@"%lu", i];
        if (![lu isEqualToString:u]) {
            NSLog(@"Warning!!! NSUInteger different output for %%u = %u, for %%lu = %lu", i, i);
        }
    }
    NSLog(@"Test NSUInteger with %%u and %%lu formats done");
}

@end
