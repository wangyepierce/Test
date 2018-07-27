//
//  thirdWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18
//  Copyright © 2018 王烨. All rights reserved.
//

#import "thirdWhiteBoard.h"
#import "config.h"

@interface thirdWhiteBoard()

@property (nonatomic,strong) UIView *thirdBackgroundView;
@property (nonatomic,strong) UILabel *zhongRongHuoBi;
@property (nonatomic,strong) UIButton *huoBi;
@property (nonatomic,strong) UIButton *zhongDiFengXian;
@property (nonatomic,strong) UILabel *sevenDays;
@property (nonatomic,strong) UILabel *percent;
@property (nonatomic,strong) UIButton *buying;

@end

@implementation thirdWhiteBoard

- (id) init{
    if (self = [super init]){
        self.frame= CGRectMake(0, 249, 375*KBaseRatio, 202);
        self.backgroundColor = [UIColor whiteColor];

        self.zhongRongHuoBi = [[UILabel alloc] initWithFrame:CGRectMake(141, 7, 93, 28)];
        self.zhongRongHuoBi.text = @"中融货币E";
        [self.zhongRongHuoBi setFont:[UIFont boldSystemFontOfSize:20]];
        [self.zhongRongHuoBi sizeToFit];
        [self addSubview:self.zhongRongHuoBi];
        
        self.huoBi = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.huoBi.frame = CGRectMake(130, 45, 52, 19);
        self.huoBi.backgroundColor = [UIColor whiteColor];
        self.huoBi.layer.cornerRadius = 5;
        self.huoBi.layer.borderWidth = 1;
        self.huoBi.layer.borderColor = [UIColor blueColor].CGColor;
        [self.huoBi setTitle:@"货币型" forState:UIControlStateNormal];
        [self.huoBi setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.huoBi setTitle:@"货币型" forState:UIControlStateSelected];
        [self.huoBi setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        self.huoBi.titleLabel.font = [UIFont systemFontOfSize:10];
        [self addSubview:self.huoBi];
        
        self.zhongDiFengXian = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.zhongDiFengXian.frame = CGRectMake(188, 45, 62, 19);
        self.zhongDiFengXian.backgroundColor = [UIColor whiteColor];
        self.zhongDiFengXian.layer.cornerRadius = 5;
        self.zhongDiFengXian.layer.borderWidth = 1;
        self.zhongDiFengXian.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [self.zhongDiFengXian setTitle:@"中低风险" forState:UIControlStateNormal];
        [self.zhongDiFengXian setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.zhongDiFengXian setTitle:@"中低风险" forState:UIControlStateSelected];
        [self.zhongDiFengXian setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        self.zhongDiFengXian.titleLabel.font = [UIFont systemFontOfSize:10];
        [self addSubview:self.zhongDiFengXian];
        
        self.sevenDays = [[UILabel alloc] initWithFrame:CGRectMake(145, 71, 84, 17)];
        self.sevenDays.text = @"七日年化收益率";
        [self.sevenDays setFont:[UIFont boldSystemFontOfSize:12]];
        [self.sevenDays sizeToFit];
        [self addSubview:self.sevenDays];
        
        self.percent = [[UILabel alloc] initWithFrame:CGRectMake(148, 159, 81, 40)];
        self.percent.text = @"4.21%";
        self.percent.textColor = [UIColor redColor];
        [self.percent setFont:[UIFont boldSystemFontOfSize:28]];
        [self.percent sizeToFit];
        [self addSubview:self.percent];
        
        self.buying = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.buying.frame = CGRectMake(22, 100, 331, 44);
        self.buying.backgroundColor = [UIColor whiteColor];
        self.buying.layer.cornerRadius = 5;
        self.buying.layer.borderWidth = 1;
        self.buying.layer.borderColor = [UIColor blueColor].CGColor;
        [self.buying addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.buying setTitle:@"立即购买" forState:UIControlStateNormal];
        [self.buying setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self addSubview:self.buying];
        
    }
    return self;
}

-(void) buttonClick:(UIButton *)button{
    [button setTitle:@"立即购买" forState:UIControlStateSelected];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];

}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.zhongRongHuoBi.frame = CGRectMake((self.bounds.size.width/2) - 48, 7, 95, 28);
    self.huoBi.frame = CGRectMake((self.bounds.size.width/2) - 48 - 11, 45, 52, 19);
    self.zhongDiFengXian.frame = CGRectMake((self.bounds.size.width/2)-48-11+58, 45, 62, 19);
    self.sevenDays.frame = CGRectMake((self.bounds.size.width/2) - 48 + 4, 71, 88, 17);
    self.percent.frame = CGRectMake((self.bounds.size.width/2) - 48+7, 159,81, 40);
    self.buying.frame = CGRectMake((self.bounds.size.width/2) - (48 + 119)*KBaseRatio, 100, 331*KBaseRatio, 44);
}

@end
