//
//  BXPlaceTextViewVC.m
//  Example
//
//  Created by Hmily on 2019/3/26.
//  Copyright © 2019 Document. All rights reserved.
//

#import "BXPlaceTextViewVC.h"

#import "BXPlaceholderTextView.h"

@interface BXPlaceTextViewVC ()

@end

@implementation BXPlaceTextViewVC

- (void)viewDidLoad {
    [super viewDidLoad];

    BXPlaceholderTextView * textView = [[BXPlaceholderTextView alloc] initWithFrame:self.view.bounds];
    textView.placeholder = @"这里对这个功能不做详解.自行摸索.";
    [self.view addSubview:textView];
    
}


@end
