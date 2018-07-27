//
//  ViewController.m
//  cczq
//
//  Created by 王烨 on 7/20/18.
//  Copyright © 2018 王烨. All rights reserved.
//


#import "ViewController.h"
#import "topWhiteBoard.h"
#import "zeroWhiteBoard.h"
#import "firstWhiteBoard.h"
#import "secondWhiteBoard.h"
#import "thirdWhiteBoard.h"
#import "forthWhiteBoard.h"
#import "fifthWhiteBoard.h"
#import "sixthWhiteBoard.h"
#import "seventhWhiteBoard.h"
#import "eighthWhiteBoard.h"
#import "ninthWhiteBoard.h"
#import "extraBoard.h"
#import "botWhiteBoard.h"
#import "config.h"


@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(back) name:@"click" object:NULL];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, 375*KBaseRatio, [UIScreen mainScreen].bounds.size.height - 47)];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(375 * KBaseRatio, 1295);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.alwaysBounceVertical = YES;
    [self.view addSubview:scrollView];
    
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375 * KBaseRatio, 1295)];

    image.backgroundColor = [UIColor whiteColor];
    image.contentMode = UIViewContentModeScaleAspectFit;
    [self.view insertSubview:image atIndex:0];
    
    topWhiteBoard *top = [[topWhiteBoard alloc] init];
    [self.view addSubview:top];
    
    zeroWhiteBoard *zero = [[zeroWhiteBoard alloc] init];
    [scrollView addSubview:zero];
    
    firstWhiteBoard *first = [[firstWhiteBoard alloc] init];
    [scrollView addSubview:first];

    secondWhiteBoard *second = [[secondWhiteBoard alloc] init];
    [scrollView addSubview:second];

    thirdWhiteBoard *third = [[thirdWhiteBoard alloc] init];
    [scrollView addSubview:third];

    forthWhiteBoard *forth = [[forthWhiteBoard alloc] init];
    [scrollView addSubview:forth];

    fifthWhiteBoard *fifth = [[fifthWhiteBoard alloc] init];
    [scrollView addSubview:fifth];

    sixthWhiteBoard *sixth = [[sixthWhiteBoard alloc] init];
    [scrollView addSubview:sixth];
    
    seventhWhiteBoard *seventh = [[seventhWhiteBoard alloc] init];
    [scrollView addSubview:seventh];
    
    eighthWhiteBoard *eighth = [[eighthWhiteBoard alloc] init];
    [scrollView addSubview:eighth];

    ninthWhiteBoard *ninth = [[ninthWhiteBoard alloc] init];
    [scrollView addSubview:ninth];
    
    extraBoard *extra = [[extraBoard alloc] init];
    [scrollView addSubview:extra];
    
    botWhiteBoard *bot = [[botWhiteBoard alloc] init];
    [self.view addSubview:bot];
}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
