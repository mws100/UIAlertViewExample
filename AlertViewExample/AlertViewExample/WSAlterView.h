//
//  WSAlterView.h
//  AlertViewExample
//
//  Created by 马文帅 on 2017/5/8.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CopletionBlock)(NSInteger buttonIndex);

@interface WSAlterView : UIAlertView

- (void)showWithBlock:(CopletionBlock)copletionBlock;

@end
