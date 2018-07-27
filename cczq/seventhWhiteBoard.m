//
//  seventhWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "seventhWhiteBoard.h"
#import "config.h"

@interface seventhWhiteBoard()

@property (nonatomic,strong) UIView *seventhBackgroundView;
@property (nonatomic,strong) UILabel *daCheng;
@property (nonatomic,strong) UIButton *guPiao;
@property (nonatomic,strong) UIButton *medRisk;
@property (nonatomic,strong) UILabel *percent2;
@property (nonatomic,strong) UILabel *zeroPoint;
@property (nonatomic,strong) UILabel *oneYuan;
@property (nonatomic,strong) UILabel *thisYear;
@property (nonatomic,strong) UILabel *labelNew;
@property (nonatomic,strong) UILabel *qiGou;

@end

@implementation seventhWhiteBoard

- (id) init{
    
    if (self = [super init]){
        self.frame = CGRectMake(0, 725, 375*KBaseRatio, 120);
        self.backgroundColor = [UIColor whiteColor];
        
        self.daCheng = [[UILabel alloc] initWithFrame:CGRectMake(30, 20, 128, 22)];
        self.daCheng.text = @"大成景阳领先混合";
        [self.daCheng setFont:[UIFont boldSystemFontOfSize:16]];
        [self.daCheng sizeToFit];
        [self addSubview:self.daCheng];
        
        self.guPiao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.guPiao.frame = CGRectMake(168, 21, 52, 19);
        self.guPiao.backgroundColor = [UIColor whiteColor];
        self.guPiao.layer.cornerRadius = 5;
        self.guPiao.layer.borderWidth = 1;
        self.guPiao.layer.borderColor = [UIColor blueColor].CGColor;
        [self.guPiao setTitle:@"股票型" forState:UIControlStateNormal];
        [self.guPiao setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.guPiao.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.guPiao setTitle:@"股票型" forState:UIControlStateSelected];
//        [self.guPiao setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.guPiao];
        
        self.medRisk = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.medRisk.frame = CGRectMake(226, 21, 52, 19);
        self.medRisk.backgroundColor = [UIColor whiteColor];
        self.medRisk.layer.cornerRadius = 5;
        self.medRisk.layer.borderWidth = 1;
        self.medRisk.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [self.medRisk setTitle:@"中风险" forState:UIControlStateNormal];
        [self.medRisk setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        self.medRisk.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.medRisk setTitle:@"中风险" forState:UIControlStateSelected];
//        [self.medRisk setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.medRisk];
        
        self.percent2 = [[UILabel alloc] initWithFrame:CGRectMake(30, 45, 84, 33)];
        self.percent2.text = @"10.22%";
        self.percent2.textColor = [UIColor redColor];
        [self.percent2 setFont:[UIFont boldSystemFontOfSize:24]];
        [self.percent2 sizeToFit];
        [self addSubview:self.percent2];
        
        self.zeroPoint = [[UILabel alloc] initWithFrame:CGRectMake(151, 49, 62, 28)];
        self.zeroPoint.text = @"0.9199";
        self.zeroPoint.textColor = [UIColor lightGrayColor];
        [self.zeroPoint setFont:[UIFont boldSystemFontOfSize:20]];
        [self.zeroPoint sizeToFit];
        [self addSubview:self.zeroPoint];
        
        self.oneYuan = [[UILabel alloc] initWithFrame:CGRectMake(261, 49, 29, 28)];
        self.oneYuan.text = @"1元";
        self.oneYuan.textColor = [UIColor lightGrayColor];
        [self.oneYuan setFont:[UIFont boldSystemFontOfSize:20]];
        [self.oneYuan sizeToFit];
        [self addSubview:self.oneYuan];
        
        self.thisYear = [[UILabel alloc] initWithFrame:CGRectMake(30, 80, 72, 17)];
        self.thisYear.text = @"今年以来涨幅";
        self.thisYear.textColor = [UIColor lightGrayColor];
        [self.thisYear setFont:[UIFont boldSystemFontOfSize:12]];
        [self.thisYear sizeToFit];
        [self addSubview:self.thisYear];
        
        self.labelNew = [[UILabel alloc] initWithFrame:CGRectMake(156, 80, 48, 17)];
        self.labelNew.text = @"最新净值";
        self.labelNew.textColor = [UIColor lightGrayColor];
        [self.labelNew setFont:[UIFont boldSystemFontOfSize:12]];
        [self.labelNew sizeToFit];
        [self addSubview:self.labelNew];
        
        self.qiGou = [[UILabel alloc] initWithFrame:CGRectMake(253, 80, 48, 17)];
        self.qiGou.text = @"起购金额";
        self.qiGou.textColor = [UIColor lightGrayColor];
        [self.qiGou setFont:[UIFont boldSystemFontOfSize:12]];
        [self.qiGou sizeToFit];
        [self addSubview:self.qiGou];
        
    }
    return self;
}

@end


