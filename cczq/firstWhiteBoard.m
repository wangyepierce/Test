//
//  firstWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/24/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "firstWhiteBoard.h"
#import "config.h"

@interface firstWhiteBoard()

@property (nonatomic, strong) UIView *backGroundView;
@property (nonatomic, strong) UIButton *firstButton;
@property (nonatomic, strong) UIButton *secondButton;
@property (nonatomic, strong) UIButton *thirdButton;
@property (nonatomic,strong) UILabel *firstLabel;
@property (nonatomic,strong) UILabel *secondLabel;
@property (nonatomic,strong) UILabel *thirdLabel;

@end

@implementation firstWhiteBoard

- (id)init {
    
    if (self = [super init]) {
        
        self.frame = CGRectMake(0, 104, 375, 86);
        self.backgroundColor = [UIColor whiteColor];
        
        self.firstButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.firstButton.frame = CGRectMake(46, 11, 52, 52);
        self.firstButton.backgroundColor = [UIColor whiteColor];
        [self.firstButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.firstButton setImage:[UIImage imageNamed:@"manage_bigpic1"] forState:UIControlStateNormal];
        [self addSubview:self.firstButton];
        
        self.secondButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.secondButton.frame = CGRectMake(162, 11, 52, 52);
        self.secondButton.backgroundColor = [UIColor whiteColor];
        [self.secondButton setImage:[UIImage imageNamed:@"manage_bigpic2"] forState:UIControlStateNormal];
        [self.secondButton addTarget:self action:@selector(buttonClick2:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.secondButton];
        
        self.thirdButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.thirdButton.frame = CGRectMake(278, 11, 52, 52);
        self.thirdButton.backgroundColor = [UIColor whiteColor];
        [self.thirdButton setImage:[UIImage imageNamed:@"manage_bigpic3"] forState:UIControlStateNormal];
        [self.thirdButton addTarget:self action:@selector(buttonClick3:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.thirdButton];
        
        self.firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(59, 63, 24, 17)];
        self.firstLabel.text = @"活期";
        self.firstLabel.textColor = [UIColor blackColor];
        [self.firstLabel setFont:[UIFont boldSystemFontOfSize:12]];
        [self.firstLabel sizeToFit];
        [self addSubview:self.firstLabel];
        
        self.secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(176, 63, 24, 17)];
        self.secondLabel.text = @"定期";
        self.secondLabel.textColor = [UIColor blackColor];
        [self.secondLabel setFont:[UIFont boldSystemFontOfSize:12]];
        [self.secondLabel sizeToFit];
        [self addSubview:self.secondLabel];
        
        self.thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(292, 63, 24, 17)];
        self.thirdLabel.text = @"基金";
        self.thirdLabel.textColor = [UIColor blackColor];
        [self.thirdLabel setFont:[UIFont boldSystemFontOfSize:12]];
        [self.thirdLabel sizeToFit];
        [self addSubview:self.thirdLabel];
        
    }
    
    return self;
    
}


-(void) buttonClick:(UIButton *)button{
    [button setImage:[UIImage imageNamed:@"manage_bigpic1"] forState:UIControlStateNormal];
}

-(void) buttonClick2:(UIButton *)button{
    [button setImage:[UIImage imageNamed:@"manage_bigpic2"] forState:UIControlStateNormal];
}

-(void) buttonClick3:(UIButton *)button{
    [button setImage:[UIImage imageNamed:@"manage_bigpic3"] forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    [super layoutSubviews];

    self.frame = CGRectMake(0, 104, 375 * KBaseRatio, 86);

    CGFloat borderGap = (self.bounds.size.width - 3 * self.firstButton.bounds.size.width)/4;
    CGFloat buttonGap = borderGap;

    self.firstButton.frame = CGRectMake(borderGap, 11, self.firstButton.bounds.size.width, self.firstButton.bounds.size.height);
    self.firstLabel.frame = CGRectMake(borderGap + 13, 63, 25, 17);


    self.secondButton.frame = CGRectMake(borderGap + self.firstButton.bounds.size.width + buttonGap, 11, self.firstButton.bounds.size.width, self.firstButton.bounds.size.height);
    self.secondLabel.frame = CGRectMake(borderGap + self.firstButton.bounds.size.width + buttonGap + 13, 63, 25, 17);

    self.thirdButton.frame = CGRectMake(self.bounds.size.width - borderGap - self.firstButton.bounds.size.width, 11, self.firstButton.bounds.size.width, self.firstButton.bounds.size.height);
    self.thirdLabel.frame = CGRectMake(self.bounds.size.width - borderGap - self.firstButton.bounds.size.width + 13, 63, 25, 17);

}

@end
