//
//  extraBoard.m
//  cczq
//
//  Created by 王烨 on 7/24/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "extraBoard.h"
#import "config.h"

@interface extraBoard()

@property (nonatomic,strong) UILabel *extraLabel;

@end

@implementation extraBoard

- (id) init{
    if (self = [super init]){
        self.extraLabel = [[UILabel alloc] initWithFrame:CGRectMake(KCurrentWidth/2 - 96, 1150, 192, 22)];
        self.extraLabel.text = @"川财证券，你的理财小棉袄";
        self.extraLabel.textColor = [UIColor grayColor];
        [self.extraLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [self.extraLabel sizeToFit];
        [self addSubview:self.extraLabel];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
