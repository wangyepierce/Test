//
//  ninthWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "ninthWhiteBoard.h"
#import "config.h"

@interface ninthWhiteBoard()

@property (nonatomic,strong) UIView *ninthBackgroundView;
@property (nonatomic,strong) UILabel *guoZhai;
@property (nonatomic,strong) UIButton *lowRisk;
@property (nonatomic,strong) UILabel *percent4;
@property (nonatomic,strong) UILabel *thousandYuan2;
@property (nonatomic,strong) UILabel *oneYuan2;
@property (nonatomic,strong) UILabel *yeJi;
@property (nonatomic,strong) UILabel *qiGou3;
@property (nonatomic,strong) UILabel *qiGou4;

@end

@implementation ninthWhiteBoard

- (id) init{
    if (self = [super init]){

        self.frame = CGRectMake(0, 967, 375*KBaseRatio, 120);
        self.backgroundColor = [UIColor whiteColor];
        
        self.guoZhai = [[UILabel alloc] initWithFrame:CGRectMake(30, 16, 64, 22)];
        self.guoZhai.text = @"国债理财";
        [self.guoZhai setFont:[UIFont boldSystemFontOfSize:16]];
        [self.guoZhai sizeToFit];
        [self addSubview:self.guoZhai];
        
        self.lowRisk = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.lowRisk.frame = CGRectMake(104, 17, 52, 19);
        self.lowRisk.backgroundColor = [UIColor whiteColor];
        self.lowRisk.layer.cornerRadius = 5;
        self.lowRisk.layer.borderWidth = 1;
        self.lowRisk.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [self.lowRisk setTitle:@"低风险" forState:UIControlStateNormal];
        [self.lowRisk setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        self.lowRisk.titleLabel.font = [UIFont systemFontOfSize:10];
//        [self.lowRisk setTitle:@"低风险" forState:UIControlStateSelected];
//        [self.lowRisk setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [self addSubview:self.lowRisk];
        
        self.percent4 = [[UILabel alloc] initWithFrame:CGRectMake(30, 41, 74, 33)];
        self.percent4.text = @"3.95%";
        self.percent4.textColor = [UIColor redColor];
        [self.percent4 setFont:[UIFont boldSystemFontOfSize:24]];
        [self.percent4 sizeToFit];
        [self addSubview:self.percent4];
        
        self.thousandYuan2 = [[UILabel alloc] initWithFrame:CGRectMake(150, 45, 65, 28)];
        self.thousandYuan2.text = @"1000元";
        self.thousandYuan2.textColor = [UIColor lightGrayColor];
        [self.thousandYuan2 setFont:[UIFont boldSystemFontOfSize:20]];
        [self.thousandYuan2 sizeToFit];
        [self addSubview:self.thousandYuan2];
        
        self.oneYuan2 = [[UILabel alloc] initWithFrame:CGRectMake(261, 45, 29, 28)];
        self.oneYuan2.text = @"1元";
        self.oneYuan2.textColor = [UIColor lightGrayColor];
        [self.oneYuan2 setFont:[UIFont boldSystemFontOfSize:20]];
        [self.oneYuan2 sizeToFit];
        [self addSubview:self.oneYuan2];
        
        self.yeJi = [[UILabel alloc] initWithFrame:CGRectMake(30, 76, 72, 17)];
        self.yeJi.text = @"业绩报酬基准";
        self.yeJi.textColor = [UIColor lightGrayColor];
        [self.yeJi setFont:[UIFont boldSystemFontOfSize:12]];
        [self.yeJi sizeToFit];
        [self addSubview:self.yeJi];
        
        self.qiGou3 = [[UILabel alloc] initWithFrame:CGRectMake(156, 76, 48, 17)];
        self.qiGou3.text = @"起购金额";
        self.qiGou3.textColor = [UIColor lightGrayColor];
        [self.qiGou3 setFont:[UIFont boldSystemFontOfSize:12]];
        [self.qiGou3 sizeToFit];
        [self addSubview:self.qiGou3];
        
        self.qiGou4 = [[UILabel alloc] initWithFrame:CGRectMake(253, 76, 48, 17)];
        self.qiGou4.text = @"起购金额";
        self.qiGou4.textColor = [UIColor lightGrayColor];
        [self.qiGou4 setFont:[UIFont boldSystemFontOfSize:12]];
        [self.qiGou4 sizeToFit];
        [self addSubview:self.qiGou4];
    }
    return self;
}

-(void) buttonClick:(UIButton *)button{

}



@end
