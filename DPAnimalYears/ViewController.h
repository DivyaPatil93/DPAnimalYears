//
//  ViewController.h
//  DPAnimalYears
//
//  Created by Test P05 on 23/09/16.
//  Copyright © 2016 Divya Patil. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kAllElementHeight 60.0
#define kHorizantalPadding 50.0
#define kVerticalPadding 20.0

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat textFieldWidth;
    CGFloat labelWidth;
    CGFloat buttonWidth;
    UITextField *myTextField;
    UILabel *myLabel;
    UIButton *myCatButton;
    UIButton *myDogButton;
    UIButton *myTurtleButton;
    UIButton *myClearButton;
    CGFloat labelYCoordinate;
    CGFloat buttonYCoordinate;
   
    
    
}


@end

