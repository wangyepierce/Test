//
//  secondWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "secondWhiteBoard.h"
#import "config.h"

@interface secondWhiteBoard()

@property (nonatomic,strong) UIView *secondBackgroundView;
@property (nonatomic,strong) UILabel *firstText;
@property (nonatomic,strong) UILabel *secondText;
@property (nonatomic,strong) UIButton *arrowButton;

@end

@implementation secondWhiteBoard

- (id) init{
    if (self = [super init]){
        self.frame = CGRectMake(0, 198, 375*KBaseRatio, 50);
        self.backgroundColor = [UIColor whiteColor];
        
        self.firstText = [[UILabel alloc] initWithFrame:CGRectMake(16, 14, 64, 22)];
        self.firstText.text = @"一元起投";
        [self.firstText setFont:[UIFont boldSystemFontOfSize:15]];
        [self.firstText sizeToFit];
        [self addSubview:self.firstText];
        
        self.secondText = [[UILabel alloc] initWithFrame:CGRectMake(94, 15, 182, 20)];
        self.secondText.text = @"理财无门槛，小钱也能生钱";
        self.secondText.textColor = [UIColor lightGrayColor];
        [self.secondText setFont:[UIFont boldSystemFontOfSize:13]];
        [self.secondText sizeToFit];
        [self addSubview:self.secondText];
        
        self.arrowButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.arrowButton.frame = CGRectMake(342, 17, 16, 16);
        self.arrowButton.backgroundColor = [UIColor whiteColor];
        [self.arrowButton setImage:[UIImage imageNamed:@"arrow_gray"] forState:UIControlStateNormal];
        [self.arrowButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.arrowButton];
    }
    return self;
}


-(void) buttonClick:(UIButton *)button{
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.arrowButton.frame = CGRectMake(self.bounds.size.width - 30, 17, 16, 16);
    
}

@end
