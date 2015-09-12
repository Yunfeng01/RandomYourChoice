//
//  ResultViewController.m
//  Choice
//
//  Created by Yunfeng Zhao on 2014-08-23.
//  Copyright (c) 2014 Yunfeng Zhao. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)shouldAutorotate {
    return NO;
}
-(NSInteger)supporttedInterfaceOrientations{
    return UIInterfaceOrientationPortrait;
}
- (void)pauseV
{
    [_movie.moviePlayer pause];
   
}
- (void)showTip
{
    _backL.hidden=NO;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"320x480.jpg"]]];
    [_result titleLabel].font = [UIFont fontWithName:@"OpenDyslexic" size:35];
    [self.result setTitle:self.score forState:UIControlStateNormal];
    NSString *vp = [[NSBundle mainBundle] pathForResource:@"choice" ofType:@"m4v"];
    NSURL *vu = [NSURL fileURLWithPath:vp];
    _movie = [[MPMoviePlayerViewController alloc] initWithContentURL:vu];
    [self presentMoviePlayerViewControllerAnimated:_movie];
    _movie.moviePlayer.controlStyle = MPMovieControlStyleNone;
    _movie.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    [_movie.view setFrame:CGRectMake(0,0,320,242)];
    [self.view addSubview:_movie.view];
    [_movie.moviePlayer play];
    
    [self performSelector:@selector(pauseV) withObject:(self) afterDelay:(24)];
    _backL.font = [UIFont fontWithName:@"OpenDyslexic" size:35];
    _backL.hidden= YES;
    [self performSelector:@selector(showTip) withObject:(self) afterDelay:(3)];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   if ([[segue identifier] isEqualToString:@"backS"]) {
       //ViewController *vc = [segue destinationViewController];
       //vc.choices = self.choice;
  }
}
@end
