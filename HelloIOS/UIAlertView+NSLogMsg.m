//
//  UIAlertView+NSLogMsg.m
//  HelloIOS
//
//  Created by jiudao-lingang on 14-6-20.
//  Copyright (c) 2014年 jiudao. All rights reserved.
//

#import "UIAlertView+NSLogMsg.h"

@implementation UIAlertView (NSLogMsg)

-(void)printText:(NSString *)msg
{
    NSLog(@"the msg is %@",msg);
}
@end
