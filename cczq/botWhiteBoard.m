//
//  botWhiteBoard.m
//  cczq
//
//  Created by 王烨 on 7/23/18.
//  Copyright © 2018 王烨. All rights reserved.
//

#import "botWhiteBoard.h"
#import "config.h"

@interface botWhiteBoard()

@property (nonatomic,strong) UIView *botBakcgroundView;
@property (nonatomic,strong) UIButton *homePageButton;
@property (nonatomic,strong) UILabel *homePage;
@property (nonatomic,strong) UIButton *quotationButton;
@property (nonatomic,strong) UILabel *quotation;
@property (nonatomic,strong) UIButton *tradeButton;
@property (nonatomic,strong) UILabel *trade;
@property (nonatomic,strong) UIButton *storeButton;
@property (nonatomic,strong) UILabel *store;
@property (nonatomic,strong) UIButton *myButton;
@property (nonatomic,strong) UILabel *my;

@end

@implementation botWhiteBoard

- (id) init{
    if (self = [super init]){
        self.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 47, 375*KBaseRatio, 47);
        self.backgroundColor = [UIColor whiteColor];
        
        self.homePageButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.homePageButton.frame = CGRectMake(22, 0, 30, 30);
        self.homePageButton.backgroundColor = [UIColor whiteColor];
        [self.homePageButton setImage:[UIImage imageNamed:@"home_baricon_home"] forState:UIControlStateNormal];
        [self.homePageButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.homePageButton];
        
        
        
        self.homePage = [[UILabel alloc] initWithFrame:CGRectMake(25, 29, 24, 17)];
        self.homePage.text = @"首页";
        self.homePage.textColor = [UIColor lightGrayColor];
        [self.homePage setFont:[UIFont boldSystemFontOfSize:12]];
        [self.homePage sizeToFit];
        [self addSubview:self.homePage];
        
        self.quotationButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.quotationButton.frame = CGRectMake(97, 0, 30, 30);
        self.quotationButton.backgroundColor = [UIColor whiteColor];
        [self.quotationButton setImage:[UIImage imageNamed:@"home_butten_quotation"] forState:UIControlStateNormal];
        [self.quotationButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.quotationButton];
        
        self.quotation = [[UILabel alloc] initWithFrame:CGRectMake(100, 29, 24, 17)];
        self.quotation.text = @"行情";
        self.quotation.textColor = [UIColor lightGrayColor];
        [self.quotation setFont:[UIFont boldSystemFontOfSize:12]];
        [self.quotation sizeToFit];
        [self addSubview:self.quotation];
        
        self.tradeButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.tradeButton.frame = CGRectMake(172, 0, 30, 30);
        self.tradeButton.backgroundColor = [UIColor whiteColor];
        [self.tradeButton setImage:[UIImage imageNamed:@"home_baricon_trade"] forState:UIControlStateNormal];
        [self.tradeButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.tradeButton];
        
        self.trade = [[UILabel alloc] initWithFrame:CGRectMake(175, 29, 24, 17)];
        self.trade.text = @"交易";
        self.trade.textColor = [UIColor lightGrayColor];
        [self.trade setFont:[UIFont boldSystemFontOfSize:12]];
        [self.trade sizeToFit];
        [self addSubview:self.trade];
        
        self.storeButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.storeButton.frame = CGRectMake(248, 0, 30, 30);
        self.storeButton.backgroundColor = [UIColor whiteColor];
        [self.storeButton setImage:[UIImage imageNamed:@"home_baricon_manage_high"] forState:UIControlStateNormal];
        [self.storeButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.storeButton];
        
        self.store = [[UILabel alloc] initWithFrame:CGRectMake(251, 29, 24, 17)];
        self.store.text = @"商城";
        self.store.textColor = [UIColor lightGrayColor];
        [self.store setFont:[UIFont boldSystemFontOfSize:12]];
        [self.store sizeToFit];
        [self addSubview:self.store];
        
        self.myButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.myButton.frame = CGRectMake(323, 0, 30, 30);
        self.myButton.backgroundColor = [UIColor whiteColor];
        [self.myButton setImage:[UIImage imageNamed:@"home_baricon_my"] forState:UIControlStateNormal];
        [self.myButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.myButton];
        
        self.my = [[UILabel alloc] initWithFrame:CGRectMake(326, 29, 24, 17)];
        self.my.text = @"我的";
        self.my.textColor = [UIColor lightGrayColor];
        [self.my setFont:[UIFont boldSystemFontOfSize:12]];
        [self.my sizeToFit];
        [self addSubview:self.my];
    }
    return self;
}

-(void) buttonClick:(UIButton *)button{
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat buttonGap = (self.bounds.size.width - 5*30)/6;
    
    if (isIPHONE_X){
        
        self.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 60, 375*KBaseRatio, 60);
        
    }

        
    self.homePageButton.frame = CGRectMake(buttonGap, 0, 30, 30);
    self.homePage.frame = CGRectMake(buttonGap + 3, 30, 26, 17);
        
    self.quotationButton.frame = CGRectMake(2*buttonGap + 30, 0, 30, 30);
    self.quotation.frame = CGRectMake(2*buttonGap + 33, 30, 26, 17);
        
    self.tradeButton.frame = CGRectMake(3*buttonGap + 30*2, 0, 30, 30);
    self.trade.frame = CGRectMake(3*buttonGap + 30*2 + 3, 30, 26, 17);
    
    self.storeButton.frame = CGRectMake(4*buttonGap + 30*3, 0, 30, 30);
    self.store.frame = CGRectMake(4*buttonGap + 30*3 +3, 30, 26, 17);
    
    self.myButton.frame = CGRectMake(5*buttonGap + 30*4, 0, 30, 30);
    self.my.frame = CGRectMake(5*buttonGap + 30*4+3, 30, 26, 17);
}

@end
