//
//  ViewController.m
//  HelloWorld
//
//  Created by XIAOMING.ZHAO on 2017/1/21.
//  Copyright © 2017年 XIAOMING.ZHAO. All rights reserved.
//

#import "ViewController.h"
#import "ViewTwo.h"


@implementation ViewController

@synthesize tfUserName;
@synthesize tfPWD;
@synthesize myTextbox;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tfUserName.text = @"Hello";
    tfPWD.text = @"World";
    myTextbox.text = @"Crazy!!!";
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *desc = [segue destinationViewController];
    BOOL test = [desc isKindOfClass:[ViewTwo class]];
    if (test) {
        ViewTwo *view2 = [segue destinationViewController];
        view2.view2LabelText = myTextbox.text;
        NSLog(@"prepareForSegue: %@", myTextbox.text);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)userLogin:(id)obj {
    NSString *username = tfUserName.text;
    NSString *pwd = [tfPWD text];
    NSString *message = [NSString stringWithFormat:@"用户名：%@ 密码：%@", username, pwd ];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"HelloWorld" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self okAction];
    }];
    UIAlertAction *resetAction = [UIAlertAction actionWithTitle:@"重置" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [self resetAction];
    }];

    [alertController addAction:resetAction];
    [alertController addAction:okAction];
    [alertController addAction:cancelAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)okAction {
    tfUserName.text = @"OK";
}

- (void)resetAction {
    tfUserName.text = @"Hello";
}

- (IBAction) returnToMainScene:(UIStoryboardSegue *)unwindSegue{
    //TODO
}




@end
