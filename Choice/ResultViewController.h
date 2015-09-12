//
//  ResultViewController.h
//  Choice
//
//  Created by Yunfeng Zhao on 2014-08-23.
//  Copyright (c) 2014 Yunfeng Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface ResultViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *result;
@property (strong, nonatomic) NSString *score;
@property (strong, nonatomic) IBOutlet UILabel *backL;
@property (strong, nonatomic) MPMoviePlayerViewController *movie;
//@property (nonatomic, copy) NSMutableArray *choice;
@end
