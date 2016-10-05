//
//  ViewController.m
//  DPAnimalYears
//
//  Created by Test P05 on 23/09/16.
//  Copyright © 2016 Divya Patil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    textFieldWidth = screenWidth-(2*kHorizantalPadding);
    labelWidth = screenWidth-(2*kHorizantalPadding);
    buttonWidth = screenWidth-(8*kHorizantalPadding);
    
    labelYCoordinate = 100+kVerticalPadding+kAllElementHeight;
    buttonYCoordinate = labelYCoordinate+kVerticalPadding+kAllElementHeight;
    
    myTextField = [[UITextField alloc]initWithFrame:CGRectMake(kHorizantalPadding, 100, textFieldWidth, kAllElementHeight)];
    
    myTextField.backgroundColor = [UIColor yellowColor];
    myTextField.textAlignment = NSTextAlignmentCenter;
    myTextField.placeholder = @"Enter Human Age";
    myTextField.delegate = self;
    myTextField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:myTextField];
    
    myLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizantalPadding, labelYCoordinate, labelWidth, kAllElementHeight)];
    myLabel.textColor = [UIColor blackColor];
    myLabel.textAlignment = NSTextAlignmentCenter;
               
    [self.view addSubview:myLabel];
    
    myCatButton = [[UIButton alloc]initWithFrame:CGRectMake((4*kHorizantalPadding), buttonYCoordinate, buttonWidth-(4*kHorizantalPadding), kAllElementHeight)];
    
    
    [myCatButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
    
    [myCatButton addTarget:self action:@selector(handleCat) forControlEvents:UIControlEventTouchUpInside];
    
    [myCatButton setTitle:@"Calculate Cat Year" forState:UIControlStateNormal];
    [self.view addSubview:myCatButton];
    
    myDogButton = [[UIButton alloc]initWithFrame:CGRectMake((4*kHorizantalPadding), buttonYCoordinate+kVerticalPadding+20, buttonWidth-(4*kHorizantalPadding), kAllElementHeight)];
    
    
    [myDogButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
    
    [myDogButton addTarget:self action:@selector(handleDog) forControlEvents:UIControlEventTouchUpInside];
    
    [myDogButton setTitle:@"Calculate Dog Year" forState:UIControlStateNormal];
    [self.view addSubview:myDogButton];
    
    myTurtleButton = [[UIButton alloc]initWithFrame:CGRectMake((4*kHorizantalPadding), buttonYCoordinate+(2*kVerticalPadding)+40, buttonWidth-(4*kHorizantalPadding), kAllElementHeight)];
    
    
    [myTurtleButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
    
    [myTurtleButton addTarget:self action:@selector(handleTurtle) forControlEvents:UIControlEventTouchUpInside];
    
    [myTurtleButton setTitle:@"Calculate Turtle Year" forState:UIControlStateNormal];
    [self.view addSubview:myTurtleButton];
    
    myClearButton = [[UIButton alloc]initWithFrame:CGRectMake(buttonWidth+(6*kHorizantalPadding), buttonYCoordinate+buttonWidth, 60, kAllElementHeight)];
    
    //myClearButton.backgroundColor = [UIColor purpleColor];
    [myClearButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [myClearButton addTarget:self action:@selector(handleClear) forControlEvents:UIControlEventTouchUpInside];
    
    [myClearButton setTitle:@"Clear" forState:UIControlStateNormal];
    
    [self.view addSubview:myClearButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleCat{
    [self calculateCatYears:myTextField.text];
}

-(void)calculateCatYears:(NSString *)content {
    int intAge = content.intValue;
    if(content)
    {
        if(intAge>0 && intAge <116)
        {
            NSString *currentValueString = myTextField.text;
            float currentValueInt = currentValueString.floatValue;
            currentValueInt = currentValueInt/7;
            NSString *newValueString = [NSString stringWithFormat:@"Cat Year is:%0.02f",currentValueInt];
            myLabel.text = newValueString;
        }
        else{
            myLabel.text = @"Please Enter The Age Between 1 to 116";
        }
    }
}
-(void)handleClear{
    myTextField.text = @" ";
}
-(void)handleDog{
    [self calculateDogYears:myTextField.text];
}

-(void)calculateDogYears:(NSString *)content {
    int intAge = content.intValue;
    if(content)
    {
        if(intAge>0 && intAge <116)
        {
            NSString *currentValueString = myTextField.text;
            float currentValueInt = currentValueString.floatValue;
            currentValueInt = currentValueInt/4;
            NSString *newValueString = [NSString stringWithFormat:@"Dog Year is:%0.02f",currentValueInt];
            myLabel.text = newValueString;
        }
        else{
            myLabel.text = @"Please Enter The Age Between 1 to 116";
        }
    }
}

-(void)handleTurtle{
    [self calculateTurtleYears:myTextField.text];
}

-(void)calculateTurtleYears:(NSString *)content {
    int intAge = content.intValue;
    if(content)
    {
        if(intAge>0 && intAge <116)
        {
            NSString *currentValueString = myTextField.text;
            float currentValueInt = currentValueString.floatValue;
            currentValueInt = currentValueInt*1.2;
            NSString *newValueString = [NSString stringWithFormat:@"Turtle Year is:%0.02f",currentValueInt];
            myLabel.text = newValueString;
        }
        else{
            myLabel.text = @"Please Enter The Age Between 1 to 116";
        }
    }
}






@end
