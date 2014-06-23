//
//  SecondViewController.h
//  HelloIOS
//
//  Created by jiudao-lingang on 14-6-20.
//  Copyright (c) 2014年 jiudao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LGPassValue.h"
@interface SecondViewController : UIViewController
@property(nonatomic,assign) NSObject<LGPassValue> *delegate;
@end
