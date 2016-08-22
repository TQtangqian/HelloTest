//
//  ViewController.m
//  Stydy
//
//  Created by 民创联盟 on 16/8/22.
//  Copyright © 2016年 TangQian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel * _noticeLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //
    
     if (_noticeLabel==nil) {
        _noticeLabel = [[UILabel alloc] initWithFrame:
                        CGRectMake(22,54,300,22)];
        _noticeLabel.textColor = [UIColor orangeColor];
        _noticeLabel.text = @"!!! 欢迎，I Love You !!!";
        _noticeLabel.textAlignment = NSTextAlignmentCenter;
        _noticeLabel.font=[UIFont systemFontOfSize:20];
        [self.view addSubview:_noticeLabel];
        
        //实现跑马灯效果
        [_noticeLabel sizeToFit];
        CGRect frame = _noticeLabel.frame;
        frame.origin.x = [UIScreen mainScreen].bounds.size.width;
        _noticeLabel.frame = frame;
        [UIView beginAnimations:@"testAnimation" context:NULL];
        [UIView setAnimationDuration:18.8f];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationRepeatCount:999999];
        
        frame = _noticeLabel.frame;
        frame.origin.x = -frame.size.width;
        _noticeLabel.frame = frame;
        [UIView commitAnimations];

    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
