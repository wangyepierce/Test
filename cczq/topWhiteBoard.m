//
//  topWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/26/18.
//  Copyright © 2018 王烨. All rights reserved.
//
#import "topWhiteBoard.h"
#import "config.h"

@interface topWhiteBoard()

@property (nonatomic,strong) UIView *topBackgroundView;
@property (nonatomic,strong) UIButton *store;
@property (nonatomic,strong) UIButton *myFinance;

@end

@implementation topWhiteBoard

- (id) init{
    if (self = [super init]){
        
        self.frame = CGRectMake(0, 20, 375*KBaseRatio, 64);
        self.backgroundColor = [UIColor whiteColor];
    
        
        self.store = [UIButton buttonWithType:UIButtonTypeSystem];
        self.store.frame = CGRectMake(70, 20, 120, 30);
        self.store.backgroundColor = [UIColor orangeColor];
        self.store.layer.borderWidth = 1;
        self.store.layer.borderColor = [UIColor orangeColor].CGColor;
        [self.store addTarget:self action:@selector(btnClick:)forControlEvents:UIControlEventTouchUpInside];
        self.store.tag = 1;
        [self.store setTitle:@"理财商城" forState:UIControlStateNormal];
        [self.store setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:self.store];
        
        self.myFinance = [UIButton buttonWithType:UIButtonTypeSystem];
        self.myFinance.frame = CGRectMake(189, 20, 120, 30);
        self.myFinance.backgroundColor = [UIColor whiteColor];
        self.myFinance.layer.borderWidth = 1;
        self.myFinance.tag = 2;
        self.myFinance.layer.borderColor = [UIColor orangeColor].CGColor;
        [self.myFinance addTarget:self action:@selector(btnClick:)forControlEvents:UIControlEventTouchUpInside];
        [self.myFinance setTitle:@"我的理财" forState:UIControlStateNormal];
        [self.myFinance setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [self addSubview:self.myFinance];
    }
    return self;
}

- (void)btnClick:(UIButton *)button{
    self.store.backgroundColor = [UIColor whiteColor];
    self.myFinance.backgroundColor = [UIColor whiteColor];
    [self.store setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [self.myFinance setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    button.backgroundColor = [UIColor orangeColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.store.frame = CGRectMake((375*KBaseRatio)/2 - 120, 20, 120, 30);
    self.myFinance.frame = CGRectMake((375*KBaseRatio/2) - 1, 20, 120, 30);
    
}


@end
