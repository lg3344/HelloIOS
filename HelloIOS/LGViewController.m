//
//  LGViewController.m
//  HelloIOS
//
//  Created by jiudao-lingang on 14-6-20.
//  Copyright (c) 2014年 jiudao. All rights reserved.
//

#import "LGViewController.h"
#import "SecondViewController.h"
#import "UIAlertView+NSLogMsg.h"

@interface LGViewController ()<LGPassValue>

@property UIButton *secondButton;
@end

@implementation LGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // 绑定监听者 self
    NSNotificationCenter *testCenter = [NSNotificationCenter defaultCenter];
    [testCenter addObserver:self selector:@selector(notificationTest:) name:@"test" object:nil];
    
    
    NSString *textString = @"第二个:在代码里面创建控件";
    CGSize size = [textString sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    CGRect selfFram  = self.view.frame;
    
    
    UILabel *secondLabel = [[UILabel alloc]initWithFrame:CGRectMake((selfFram.size.width-size.width)/2, (selfFram.size.height + size.height)/2, size.width , size.height)];
    secondLabel.text = textString;
    [self.view addSubview:secondLabel];
    
    self.secondButton = [[UIButton alloc]initWithFrame:CGRectMake((selfFram.size.width-200)/2, (selfFram.size.height+200)/2, 200, 40)];
    
    [self.secondButton setTitle:@"点击进去第二个界面" forState:UIControlStateNormal];
    self.secondButton.backgroundColor =[UIColor orangeColor];
    [self.secondButton addTarget:self action:@selector(loadSecondView:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.secondButton];
    
}

- (void)loadSecondView:(UIButton *)sender
{
    SecondViewController *second = [[SecondViewController alloc]init];
    second.delegate = self;
    [self presentViewController:second animated:YES completion:nil];
    
}
-(void)passString:(NSString *)value
{
    [self showAlert:value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)notificationTest:(NSNotification *)sender
{
    NSString *name = [sender object];
    [self showAlert:name];
}

- (void)showAlert:(NSString *)text
{
    NSString *name = text;
    if (name.length == 0) {
        name = @"第二个界面没有返回值";
    }else{
        name = [NSString stringWithFormat:@"第二个界面返回值～%@",name];
    }
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"标题" message:name delegate:nil cancelButtonTitle:@"朕知道了" otherButtonTitles:nil, nil];
    //调用类别的方法
    [alertView printText:name];
    [alertView show];
}

@end
