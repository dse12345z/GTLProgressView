//
//  ViewController.m
//  GTLProgressView
//
//  Created by daisuke_lu on 2018/5/10.
//  Copyright © 2018年 daisuke_lu. All rights reserved.
//

#import "ViewController.h"
#import "GTLProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *boardView;

@property (strong, nonatomic) GTLProgressView *gtlProgressView;
@property (weak, nonatomic) NSTimer *timer;
@property (assign, nonatomic) CGFloat progressValue;

@end

@implementation ViewController

#pragma mark - private instance method

#pragma mark * init values

- (void)setupInitValues {
    self.progressValue = 0.0f;
}

- (void)setupGTLProgressViews {
    CGRect frame = self.boardView.bounds;
    UIImage *backgroundImage = [UIImage imageNamed:@"btn_SMScode0"];
    UIImage *progressImage = [UIImage imageNamed:@"btn_SMScode"];
    self.gtlProgressView = [GTLProgressView initWithFrame:frame backgroundImage:backgroundImage progressImage:progressImage];
    [self.boardView addSubview:self.gtlProgressView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(restart)];
    [self.gtlProgressView addGestureRecognizer:tap];
}

- (void)setupTimer {
    [self.timer invalidate];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(progress) userInfo:nil repeats:YES];
}

#pragma mark * misc

- (void)restart {
    if (self.progressValue < 1.0f) return;

    self.progressValue = 0.0f;
}

- (void)progress {
    self.progressValue += 0.01;
    [self.gtlProgressView setProgress:self.progressValue];
}

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupInitValues];
    [self setupGTLProgressViews];
    [self setupTimer];
}

@end
