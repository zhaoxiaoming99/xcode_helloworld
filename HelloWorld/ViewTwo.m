//
//  ViewTwo.m
//  HelloWorld
//
//  Created by XIAOMING.ZHAO on 2017/2/27.
//  Copyright © 2017年 XIAOMING.ZHAO. All rights reserved.
//

#import "ViewTwo.h"

@interface ViewTwo()

@end

@implementation ViewTwo

@synthesize view2Label;
@synthesize view2LabelText;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    view2Label.text = view2LabelText;
    //view2Label.text = @"abc";
    NSLog(@"view2LabelText: %@", view2LabelText);
}

-(void)setPassValue:(NSString *)passValue{
    
}


@end
