//
//  GTLProgressView.h
//  UITableView
//
//  Created by daisuke_lu on 2018/5/10.
//  Copyright © 2018年 daisuke_lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTLProgressView : UIView

+ (GTLProgressView *)initWithFrame:(CGRect)frame backgroundImage:(UIImage *)backgroundImage progressImage:(UIImage *)progressImage;
- (void)setProgress:(CGFloat)progress;

@end
