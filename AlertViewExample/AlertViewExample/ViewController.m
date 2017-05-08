//
//  ViewController.m
//  AlertViewExample
//
//  Created by 马文帅 on 2017/5/8.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//  博客地址:http://www.jianshu.com/u/0c9a278e7746

#import "ViewController.h"
#import "UIAlertView+Extension.h"
#import "WSAlterView.h"

@interface ViewController () <UIAlertViewDelegate>
@property (nonatomic, strong) WSAlterView *alter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

//关联对象实现的
- (IBAction)buttonClick:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"title" message:@"This is message!" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"done", nil];
    [alert showWithBlock:^(NSInteger buttonIndex) {
        NSLog(@"%zd", buttonIndex);
        if (buttonIndex == 0) {
            // cancel
        } else {
            // done
        }
    }];
}

//继承实现的
- (IBAction)buttonClick2:(UIButton *)sender {
    WSAlterView *alert = [[WSAlterView alloc] initWithTitle:@"title" message:@"This is message!" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"done", nil];
    [alert showWithBlock:^(NSInteger buttonIndex) {
        NSLog(@"%zd", buttonIndex);
        if (buttonIndex == 0) {
            // cancel
        } else {
            // done
        }
    }];
}

@end
