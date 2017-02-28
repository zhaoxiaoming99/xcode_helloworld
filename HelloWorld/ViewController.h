//
//  ViewController.h
//  HelloWorld
//
//  Created by XIAOMING.ZHAO on 2017/1/21.
//  Copyright © 2017年 XIAOMING.ZHAO. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
//    UITextField *tfUserName;
//    UITextField *tfPWD;
}
@property (nonatomic, retain) IBOutlet UITextField *tfUserName;
@property (nonatomic, retain) IBOutlet UITextField *tfPWD;
@property (nonatomic, strong) IBOutlet UITextField *myTextbox;

- (IBAction) userLogin:(id)obj;
- (IBAction) pushEvent:(id)sender;
- (IBAction) returnToMainScene:(UIStoryboardSegue *)unwindSegue;

@end


