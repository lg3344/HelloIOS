//
//  SecondViewController.m
//  HelloIOS
//
//  Created by jiudao-lingang on 14-6-20.
//  Copyright (c) 2014年 jiudao. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic, strong)UITextField *text;
@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *backButton = [[UIButton alloc]initWithFrame:CGRectMake(100 ,100, 200, 40)];
    [backButton setTitle:@"传值并返回主界面" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(baceView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    self.text = [[UITextField alloc]initWithFrame:CGRectMake(100, 50, 200, 60)];
    self.text.placeholder = @"请在这里输入文字";
    // 加边框
    self.text.layer.borderWidth = 1;
    self.text.layer.borderColor = [UIColor greenColor].CGColor;
    // 加圆角
    self.text.layer.cornerRadius = 5.0f;
    
    [self.view addSubview:self.text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)baceView:(UIButton *)sender
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate passString:self.text.text];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
