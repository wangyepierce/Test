//
//  eighthWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "eighthWhiteBoard.h"
#import "config.h"

@interface eighthWhiteBoard()

@property (nonatomic,strong) UIView *eighthBackgroundView;
@property (nonatomic,strong) UILabel *nanFang;
@property (nonatomic,strong) UIButton *jiJin;
@property (nonatomic,strong) UIButton *mediumRisk;
@property (nonatomic,strong) UIButton *support;
@property (nonatomic,strong) UILabel *percent3;
@property (nonatomic,strong) UILabel *onePoint;
@property (nonatomic,strong) UILabel *zeroYuan;
@property (nonatomic,strong) UILabel *sevenDays;
@property (nonatomic,strong) UILabel *wanFen;
@property (nonatomic,strong) UILabel *qiGou2;

@end

@implementation eighthWhiteBoard

- (id) init{
    if (self = [super init]){
        
        self.frame = CGRectMake(0, 846, 375*KBaseRatio, 120);
        self.backgroundColor = [UIColor whiteColor];
        
        self.nanFang = [[UILabel alloc] initWithFrame:CGRectMake(30*KBaseRatio, 19, 123*KBaseRatio, 22)];
        self.nanFang.text = @"南方现金通货币E";
        [self.nanFang setFont:[UIFont boldSystemFontOfSize:16]];
        [self.nanFang sizeToFit];
        [self addSubview:self.nanFang];
        
        self.jiJin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.jiJin.frame = CGRectMake(163*KBaseRatio, 20, 52*KBaseRatio, 19);
        self.jiJin.backgroundColor = [UIColor whiteColor];
        self.jiJin.layer.cornerRadius = 5;
        self.jiJin.layer.borderWidth = 1;
        self.jiJin.layer.borderColor = [UIColor blueColor].CGColor;
        [self.jiJin setTitle:@"基金" forState:UIControlStateNormal];
        [self.jiJin setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.jiJin.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.jiJin setTitle:@"基金" forState:UIControlStateSelected];
//        [self.jiJin setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.jiJin];
        
        self.mediumRisk = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.mediumRisk.frame = CGRectMake(221*KBaseRatio, 20, 52*KBaseRatio, 19);
        self.mediumRisk.backgroundColor = [UIColor whiteColor];
        self.mediumRisk.layer.cornerRadius = 5;
        self.mediumRisk.layer.borderWidth = 1;
        self.mediumRisk.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [self.mediumRisk setTitle:@"中风险" forState:UIControlStateNormal];
        [self.mediumRisk setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        self.mediumRisk.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.mediumRisk setTitle:@"中风险" forState:UIControlStateSelected];
//        [self.mediumRisk setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.mediumRisk];
        
        self.support = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.support.frame = CGRectMake(279*KBaseRatio, 20, 62*KBaseRatio, 19);
        self.support.backgroundColor = [UIColor whiteColor];
        self.support.layer.cornerRadius = 5;
        self.support.layer.borderWidth = 1;
        self.support.layer.borderColor = [UIColor redColor].CGColor;
        [self.support setTitle:@"支持快赎" forState:UIControlStateNormal];
        [self.support setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.support.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.support setTitle:@"支持快赎" forState:UIControlStateSelected];
//        [self.support setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.support];
        
        self.percent3 = [[UILabel alloc] initWithFrame:CGRectMake(30, 44, 74, 33)];
        self.percent3.text = @"4.26%";
        self.percent3.textColor = [UIColor redColor];
        [self.percent3 setFont:[UIFont boldSystemFontOfSize:24]];
        [self.percent3 sizeToFit];
        [self addSubview:self.percent3];
        
        self.onePoint = [[UILabel alloc] initWithFrame:CGRectMake(153, 48, 58, 28)];
        self.onePoint.text = @"1.3162";
        self.onePoint.textColor = [UIColor lightGrayColor];
        [self.onePoint setFont:[UIFont boldSystemFontOfSize:20]];
        [self.onePoint sizeToFit];
        [self addSubview:self.onePoint];
        
        self.zeroYuan = [[UILabel alloc] initWithFrame:CGRectMake(260, 48, 32, 28)];
        self.zeroYuan.text = @"0元";
        self.zeroYuan.textColor = [UIColor lightGrayColor];
        [self.zeroYuan setFont:[UIFont boldSystemFontOfSize:20]];
        [self.zeroYuan sizeToFit];
        [self addSubview:self.zeroYuan];
        
        self.sevenDays = [[UILabel alloc] initWithFrame:CGRectMake(30, 79, 84, 17)];
        self.sevenDays.text = @"七日年化收益率";
        self.sevenDays.textColor = [UIColor lightGrayColor];
        [self.sevenDays setFont:[UIFont boldSystemFontOfSize:12]];
        [self.sevenDays sizeToFit];
        [self addSubview:self.sevenDays];
        
        self.wanFen = [[UILabel alloc] initWithFrame:CGRectMake(156, 79, 48, 17)];
        self.wanFen.text = @"万份收益";
        self.wanFen.textColor = [UIColor lightGrayColor];
        [self.wanFen setFont:[UIFont boldSystemFontOfSize:12]];
        [self.wanFen sizeToFit];
        [self addSubview:self.wanFen];
        
        self.qiGou2 = [[UILabel alloc] initWithFrame:CGRectMake(253, 79, 48, 17)];
        self.qiGou2.text = @"起购金额";
        self.qiGou2.textColor = [UIColor lightGrayColor];
        [self.qiGou2 setFont:[UIFont boldSystemFontOfSize:12]];
        [self.qiGou2 sizeToFit];
        [self addSubview:self.qiGou2];
        
    }
    return self;
}

@end
