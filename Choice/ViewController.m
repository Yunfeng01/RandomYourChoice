//
//  ViewController.m
//  Choice
//
//  Created by Yunfeng Zhao on 2014-08-23.
//  Copyright (c) 2014 Yunfeng Zhao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //NSArray *choices = [[NSArray alloc] init];
    _choice1.font = [UIFont fontWithName:@"OpenDyslexic" size:25];
    _choice2.font = [UIFont fontWithName:@"OpenDyslexic" size:25];
    _choice3.font = [UIFont fontWithName:@"OpenDyslexic" size:25];
    _choice4.font = [UIFont fontWithName:@"OpenDyslexic" size:25];
    _choice5.font = [UIFont fontWithName:@"OpenDyslexic" size:25];
    _choice6.font = [UIFont fontWithName:@"OpenDyslexic" size:25];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"320x4802.jpg"]]];
    _choices = [[NSMutableArray alloc] init];
    _choice1.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"c1"];
    _choice2.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"c2"];
    _choice3.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"c3"];
    _choice4.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"c4"];
    _choice5.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"c5"];
    _choice6.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"c6"];
}
-(BOOL)shouldAutorotate {
    return NO;
}
-(NSInteger)supporttedInterfaceOrientations{
    return UIInterfaceOrientationPortrait;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)choose:(id)sender {
    SystemSoundID soundID;
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"pin" ofType:@"mp3"];
    NSURL *soundUrl = [NSURL fileURLWithPath:soundPath];
    
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundUrl, &soundID);
    AudioServicesPlaySystemSound(soundID);
    int counter = 0;
    if ([self.choice1.text length] != 0) {
        counter++;
        [_choices addObject:self.choice1.text];
    }
    if ([self.choice2.text length] != 0) {
        counter++;
        [_choices addObject:self.choice2.text];
    }
    if ([self.choice3.text length] != 0) {
        counter++;
        [_choices addObject:self.choice3.text];
    }
    if ([self.choice4.text length] != 0) {
        counter++;
        [_choices addObject:self.choice4.text];
    }
    if ([self.choice5.text length] != 0) {
        counter++;
        [_choices addObject:self.choice5.text];
    }
    if ([self.choice6.text length] != 0) {
        counter++;
        [_choices addObject:self.choice6.text];
    }
    if(counter != 0){
        int i = arc4random() % counter;
        self.score = [_choices objectAtIndex:i];
    }
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice1.text forKey:@"c1"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice2.text forKey:@"c2"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice3.text forKey:@"c3"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice4.text forKey:@"c4"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice5.text forKey:@"c5"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice6.text forKey:@"c6"];
    
}

- (IBAction)clear:(id)sender {
    SystemSoundID soundID;
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"pin" ofType:@"mp3"];
    NSURL *soundUrl = [NSURL fileURLWithPath:soundPath];
    
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundUrl, &soundID);
    AudioServicesPlaySystemSound(soundID);
    [_choices removeAllObjects];
    [self.choice1 setText:@""];
    [self.choice2 setText:@""];
    [self.choice3 setText:@""];
    [self.choice4 setText:@""];
    [self.choice5 setText:@""];
    [self.choice6 setText:@""];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice1.text forKey:@"c1"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice2.text forKey:@"c2"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice3.text forKey:@"c3"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice4.text forKey:@"c4"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice5.text forKey:@"c5"];
    [[NSUserDefaults standardUserDefaults]
     setObject:_choice6.text forKey:@"c6"];
}

- (IBAction)anywhere:(id)sender {
    [self.choice1 resignFirstResponder];
    [self.choice2 resignFirstResponder];
    [self.choice3 resignFirstResponder];
    [self.choice4 resignFirstResponder];
    [self.choice5 resignFirstResponder];
    [self.choice6 resignFirstResponder];
    
}

- (IBAction)enter1:(id)sender {
    [self.choice1 resignFirstResponder];
}

- (IBAction)enter2:(id)sender {
    [self.choice2 resignFirstResponder];
}

- (IBAction)enter3:(id)sender {
    [self.choice3 resignFirstResponder];
}

- (IBAction)enter4:(id)sender {
    [self.choice4 resignFirstResponder];
}

- (IBAction)enter5:(id)sender {
    [self.choice5 resignFirstResponder];
}

- (IBAction)enter6:(id)sender {
    [self.choice6 resignFirstResponder];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"resultS"]) {
        ResultViewController *vc = [segue destinationViewController];
        vc.score = self.score;
        //vc.choice = self.choices;
    }
}

@end
