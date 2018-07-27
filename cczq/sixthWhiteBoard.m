//
//  sixthWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "sixthWhiteBoard.h"
#import "config.h"

@interface sixthWhiteBoard()

@property (nonatomic,strong) UIView *sixthBackgroundView;
@property (nonatomic,strong) UILabel *wenYing;
@property (nonatomic,strong) UIButton *fixed;
@property (nonatomic,strong) UIButton *mediumLow;
@property (nonatomic,strong) UILabel *percent1;
@property (nonatomic,strong) UILabel *thousandYuan;
@property (nonatomic,strong) UILabel *grade;
@property (nonatomic,strong) UILabel *amount;

@end



@implementation sixthWhiteBoard

- (id) init{
    if(self = [super init]){
        self.frame = CGRectMake(0, 604, 375*KBaseRatio, 120);
        self.backgroundColor = [UIColor whiteColor];
        
        self.wenYing = [[UILabel alloc] initWithFrame:CGRectMake(30, 21, 68, 22)];
        self.wenYing.text = @"稳赢30天";
        [self.wenYing setFont:[UIFont boldSystemFontOfSize:16]];
        [self.wenYing sizeToFit];
        [self addSubview:self.wenYing];
        
        self.fixed = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.fixed.frame = CGRectMake(108, 22, 62, 19);
        self.fixed.backgroundColor = [UIColor whiteColor];
        self.fixed.layer.cornerRadius = 5;
        self.fixed.layer.borderWidth = 1;
        self.fixed.layer.borderColor = [UIColor blueColor].CGColor;
        [self.fixed setTitle:@"定期理财" forState:UIControlStateNormal];
        [self.fixed setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.fixed.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.fixed setTitle:@"定期理财" forState:UIControlStateSelected];
//        [self.fixed setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.fixed];
        
        self.mediumLow = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.mediumLow.frame = CGRectMake(174, 22, 62, 19);
        self.mediumLow.backgroundColor = [UIColor whiteColor];
        self.mediumLow.layer.cornerRadius = 5;
        self.mediumLow.layer.borderWidth = 1;
        self.mediumLow.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [self.mediumLow setTitle:@"中低风险" forState:UIControlStateNormal];
        [self.mediumLow setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        self.mediumLow.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.mediumLow setTitle:@"中低风险" forState:UIControlStateSelected];
//        [self.mediumLow setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.mediumLow];
        
        self.percent1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 46, 74, 33)];
        self.percent1.text = @"4.95%";
        self.percent1.textColor = [UIColor redColor];
        [self.percent1 setFont:[UIFont boldSystemFontOfSize:24]];
        [self.percent1 sizeToFit];
        [self addSubview:self.percent1];
        
        self.thousandYuan = [[UILabel alloc] initWithFrame:CGRectMake(149, 50, 65, 28)];
        self.thousandYuan.text = @"1000元";
        self.thousandYuan.textColor = [UIColor lightGrayColor];
        [self.thousandYuan setFont:[UIFont boldSystemFontOfSize:20]];
        [self.thousandYuan sizeToFit];
        [self addSubview:self.thousandYuan];
        
        self.grade = [[UILabel alloc] initWithFrame:CGRectMake(30, 81, 72, 17)];
        self.grade.text = @"业绩报酬基准";
        self.grade.textColor = [UIColor lightGrayColor];
        [self.grade setFont:[UIFont boldSystemFontOfSize:12]];
        [self.grade sizeToFit];
        [self addSubview:self.grade];
        
        self.amount = [[UILabel alloc] initWithFrame:CGRectMake(156, 81, 48, 17)];
        self.amount.text = @"起购金额";
        self.amount.textColor = [UIColor lightGrayColor];
        [self.amount setFont:[UIFont boldSystemFontOfSize:12]];
        [self.amount sizeToFit];
        [self addSubview:self.amount];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
    
}


@end
