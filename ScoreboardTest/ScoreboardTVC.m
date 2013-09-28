//
//  ScoreboardTVC.m
//  ScoreboardTest
//
//  Created by Spencer Congero on 9/27/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import "ScoreboardTVC.h"

@interface ScoreboardTVC ()



@end

@implementation ScoreboardTVC

- (NSArray *)friendTeam
{
    if (!_friendTeams) _friendTeams = [[NSArray alloc] init];
    
    return _friendTeams;
}

- (void)setFriendTeams:(NSArray *)friendTeams
{
    _friendTeams = friendTeams;
    [self.tableView reloadData];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[ScoreboardTVC rank] count];
}



+ (NSArray *)rank;
{
    return @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8"];
}

+ (NSArray *)friendName;
{
    return @[@"Spencer",@"Rahul",@"Mike",@"Sean",@"Roshan",@"Stephen",@"Shelief",@"Shane"];
}

+ (NSArray *)score;
{
    return @[@"100",@"90",@"80",@"70",@"60",@"50",@"40",@"0"];
}

- (NSString *)titleForRow:(NSUInteger)row
{
    NSString *friendAndRank = [NSString stringWithFormat:@"%@. %@", [ScoreboardTVC rank][row], [ScoreboardTVC friendName][row]];
    
    return friendAndRank;
}
- (NSString *)scoreForRow:(NSUInteger)row
{
    return [ScoreboardTVC score][row];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Rank Team Score";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = [self titleForRow:indexPath.row];
    cell.detailTextLabel.text = [self scoreForRow:indexPath.row];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
