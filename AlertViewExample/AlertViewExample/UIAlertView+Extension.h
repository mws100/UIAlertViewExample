//
//  UIAlertView+Extension.h
//  AlertViewExample
//
//  Created by 马文帅 on 2017/5/8.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CopletionBlock)(NSInteger buttonIndex);

@interface UIAlertView (Extension)

- (void)showWithBlock:(CopletionBlock)block;

@end
