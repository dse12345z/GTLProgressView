//
//  GTLProgressView.m
//  UITableView
//
//  Created by daisuke_lu on 2018/5/10.
//  Copyright © 2018年 daisuke_lu. All rights reserved.
//

#import "GTLProgressView.h"

@interface GTLProgressView()

@property (nonatomic, strong) CALayer *maskLayer;

@end

@implementation GTLProgressView

#pragma mark - class method

+ (GTLProgressView *)initWithFrame:(CGRect)frame backgroundImage:(UIImage *)backgroundImage progressImage:(UIImage *)progressImage {
    GTLProgressView *gtlProgressView = [[GTLProgressView alloc] initWithFrame:frame];
    gtlProgressView.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    // 遮罩
    gtlProgressView.maskLayer = [CALayer layer];
    gtlProgressView.maskLayer.frame = CGRectZero;
    gtlProgressView.maskLayer.backgroundColor = [UIColor whiteColor].CGColor;
    
    // 進度圖
    UIImageView *progressImageView = [[UIImageView alloc] initWithFrame:gtlProgressView.bounds];
    progressImageView.image = progressImage;
    progressImageView.layer.mask = gtlProgressView.maskLayer;
    [gtlProgressView addSubview:progressImageView];
    
    return gtlProgressView;
}

- (void)setProgress:(CGFloat)progress {
    if (progress < 0.0f) progress = 0.0f;
    if (progress > 1.0f) progress = 1.0f;
    
    CGFloat width = CGRectGetWidth(self.bounds) * progress;
    CGFloat height = CGRectGetHeight(self.bounds);
    CGRect frame = CGRectMake(0, 0, width, height);
    self.maskLayer.frame = frame;
}

@end
