//
//  ViewTwo.h
//  HelloWorld
//
//  Created by XIAOMING.ZHAO on 2017/2/27.
//  Copyright © 2017年 XIAOMING.ZHAO. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewTwo : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *view2Label;
@property (strong, nonatomic) NSString *view2LabelText;

-(void) setPassValue:(NSString *)passValue;

@end


