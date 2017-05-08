//
//  WSAlterView.m
//  AlertViewExample
//
//  Created by 马文帅 on 2017/5/8.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import "WSAlterView.h"

@interface WSAlterView ()

@property (nonatomic, copy) CopletionBlock copletionBlock;

@end

@implementation WSAlterView

- (void)showWithBlock:(CopletionBlock)copletionBlock {
    if (copletionBlock) {
        self.copletionBlock = copletionBlock;
        self.delegate = self;
    }
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.copletionBlock) {
        self.copletionBlock(buttonIndex);
    }
}

@end
