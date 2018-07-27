//
//  fifthWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "fifthWhiteBoard.h"
#import "config.h"

@interface fifthWhiteBoard()

@property (nonatomic,strong) UIView *fifthBackgroundView;
@property (nonatomic,strong) UILabel *allSee;
@property (nonatomic,strong) UILabel *hotProduct;

@end

@implementation fifthWhiteBoard

- (id) init{
    if (self = [super init]){
        self.frame = CGRectMake(0, 553, 375*KBaseRatio, 50);
        self.backgroundColor = [UIColor whiteColor];
        
        self.allSee = [[UILabel alloc] initWithFrame:CGRectMake(14, 14, 80, 22)];
        self.allSee.text = @"大家都在看";
        [self.allSee setFont:[UIFont boldSystemFontOfSize:16]];
        [self.allSee sizeToFit];
        [self addSubview:self.allSee];
        
        self.hotProduct = [[UILabel alloc] initWithFrame:CGRectMake(105, 15, 70, 20)];
        self.hotProduct.text = @"最热门新产品";
        self.hotProduct.textColor = [UIColor lightGrayColor];
        [self.hotProduct setFont:[UIFont boldSystemFontOfSize:14]];
        [self.hotProduct sizeToFit];
        [self addSubview:self.hotProduct];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    
    
}



@end
