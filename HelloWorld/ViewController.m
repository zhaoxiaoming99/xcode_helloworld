//
//  ViewController.m
//  HelloWorld
//
//  Created by XIAOMING.ZHAO on 2017/1/21.
//  Copyright © 2017年 XIAOMING.ZHAO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tfUserName;
@synthesize tfPWD;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tfUserName.text = @"Hello";
    tfPWD.text = @"World";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)userLogin:(id)obj {
    NSString *username = tfUserName.text;
    NSString *pwd = [tfPWD text];
    NSString *message = [NSString stringWithFormat:@"用户名：%@ 密码：%@", username, pwd ];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Information" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

- (IBAction)pushEvent:(id)sender {
    
}

@end
