//
//  forthWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "forthWhiteBoard.h"
#import "config.h"

@interface forthWhiteBoard()

@property (nonatomic,strong) UIView *forthBackgroundView;
@property (nonatomic,strong) UILabel *advertisementLabel;
@property (nonatomic,strong) UILabel *ad10;
@property (nonatomic,strong) UILabel *adSecondHalf;
@property (nonatomic,strong) UILabel *advertisementLabel2;

@end

@implementation forthWhiteBoard

- (id) init{
    if (self = [super init]){
        self.frame = CGRectMake(0, 458, 375*KBaseRatio, 87);
        self.backgroundColor = [UIColor blueColor];
        
        self.advertisementLabel = [[UILabel alloc] initWithFrame:CGRectMake(35.8, 17.6, 20, 21.9)];
        self.advertisementLabel.text = @"高于";
        self.advertisementLabel.textColor = [UIColor whiteColor];
        [self.advertisementLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [self.advertisementLabel sizeToFit];
        [self addSubview:self.advertisementLabel];
        
        self.ad10 = [[UILabel alloc] initWithFrame:CGRectMake(65, 4, 20, 21.9)];
        self.ad10.text = @"10";
        self.ad10.textColor = [UIColor whiteColor];
        [self.ad10 setFont:[UIFont boldSystemFontOfSize:30]];
        [self.ad10 sizeToFit];
        [self addSubview:self.ad10];
        
        self.adSecondHalf = [[UILabel alloc] initWithFrame:CGRectMake(100, 17.6, 152.8, 21.9)];
        self.adSecondHalf.text = @"倍银行活期利率";
        self.adSecondHalf.textColor = [UIColor whiteColor];
        [self.adSecondHalf setFont:[UIFont boldSystemFontOfSize:14]];
        [self.adSecondHalf sizeToFit];
        [self addSubview:self.adSecondHalf];
        
        self.advertisementLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(34, 45, 127, 25)];
        self.advertisementLabel2.text = @"明拥宝用户专享";
        self.advertisementLabel2.textColor = [UIColor whiteColor];
        [self.advertisementLabel2 setFont:[UIFont boldSystemFontOfSize:18]];
        [self.advertisementLabel2 sizeToFit];
        [self addSubview:self.advertisementLabel2];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

@end
