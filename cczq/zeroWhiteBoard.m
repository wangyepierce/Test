//
//  zeroWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/25/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "zeroWhiteBoard.h"
#import "config.h"

@interface zeroWhiteBoard()

@property (nonatomic,strong) UIView *zeroBackgroundView;
@property (nonatomic,strong) UILabel *wuLiCai;
@property (nonatomic,strong) UIButton *exit;
@property (nonatomic,strong) UIImageView *exitPic;

@end

@implementation zeroWhiteBoard

- (id) init{
    if (self = [super init]){
        self.frame = CGRectMake(0, 64, 375*KBaseRatio, 40);
        self.backgroundColor = [UIColor cyanColor];
        
        self.wuLiCai = [[UILabel alloc] initWithFrame:CGRectMake(17, 10, 154, 20)];
        self.wuLiCai.text = @"您当前无持仓的理财产品";
        self.wuLiCai.textColor = [UIColor lightGrayColor];
        [self.wuLiCai setFont:[UIFont boldSystemFontOfSize:14]];
        [self.wuLiCai sizeToFit];
        [self addSubview:self.wuLiCai];
        
        self.exit = [UIButton buttonWithType:UIButtonTypeSystem];
        self.exit.frame = CGRectMake(342, 12, 16, 16);
        self.exit.backgroundColor = [UIColor cyanColor];
        [self.exit addTarget:self action:@selector(btnClick:)forControlEvents:UIControlEventTouchUpInside];
        [self.exit setImage:[UIImage imageNamed:@"arrow_red.png"] forState:UIControlStateNormal];
        [self addSubview:self.exit];
        }
    return self;
}

-(void) btnClick:(UIButton *)button{
    [button setImage:[UIImage imageNamed:@"arrow_red.png"] forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.exit.frame = CGRectMake(self.bounds.size.width - 30, 12, 16, 16);
}
@end
