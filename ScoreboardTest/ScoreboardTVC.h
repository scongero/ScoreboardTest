//
//  ScoreboardTVC.h
//  ScoreboardTest
//
//  Created by Spencer Congero on 9/27/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScoreboardTVC : UITableViewController

@property (strong, nonatomic) NSArray *friendTeams;
+ (NSArray *)rank;
+ (NSArray *)friendName;
+ (NSArray *)score;



@end
