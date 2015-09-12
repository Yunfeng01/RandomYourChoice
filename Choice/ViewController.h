//
//  ViewController.h
//  Choice
//
//  Created by Yunfeng Zhao on 2014-08-23.
//  Copyright (c) 2014 Yunfeng Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultViewController.h"
#import "AudioToolbox/AudioToolbox.h"
@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *choice1;
@property (strong, nonatomic) IBOutlet UITextField *choice2;
@property (strong, nonatomic) IBOutlet UITextField *choice3;
@property (strong, nonatomic) IBOutlet UITextField *choice4;
@property (strong, nonatomic) IBOutlet UITextField *choice5;
@property (strong, nonatomic) IBOutlet UITextField *choice6;
@property (strong, nonatomic) IBOutlet UIButton *okButton;
@property (strong, nonatomic) IBOutlet UIButton *clearButton;
@property (nonatomic, copy) NSMutableArray *choices;
@property (strong, nonatomic) NSString *score;
- (IBAction)choose:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)anywhere:(id)sender;
- (IBAction)enter1:(id)sender;
- (IBAction)enter2:(id)sender;
- (IBAction)enter3:(id)sender;
- (IBAction)enter4:(id)sender;
- (IBAction)enter5:(id)sender;
- (IBAction)enter6:(id)sender;

@end
