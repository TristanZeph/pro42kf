//
//  PlannerTVC.m
//  TravelApp
//
//  Created by Tristan on 21/08/13.
//  Copyright (c) 2013 Tristan. All rights reserved.
//

#import "PlannerTVC.h"
#import "EventDetailsVC.h"
#import "Event.h"

@interface PlannerTVC ()

@end

@implementation PlannerTVC
@synthesize plannerEvents;

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    plannerEvents = [[NSMutableArray alloc] init];
    
    // create Beastie Burgers event
    Event *event1 = [[Event alloc] init];
    event1.name = @"Eat at Beastie Burgers";
    event1.time = @"12.00pm";
    event1.location = @"Somewhere in SouthBank";
    event1.bannerImage = @"Planner_ExampleTile1.png";
    
    [plannerEvents addObject:event1];
    
    // create Queensland Art Gallery event
    Event *event2 = [[Event alloc] init];
    event2.name = @"Visit Queensland Art Gallery";
    event2.time = @"13.00pm";
    event2.location = @"Brisbane, City";
    event2.bannerImage = @"Planner_ExampleTile2.png";
    
    [plannerEvents addObject:event2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

// number of rows in each section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return plannerEvents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *filePath = [[plannerEvents objectAtIndex:indexPath.row] bannerImage];
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:filePath]];
    //cell.textLabel.text = [[plannerEvents objectAtIndex:indexPath.row] name];
    
    return cell;
}

// transfers event object to the destination VC
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showEventDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        EventDetailsVC *destVC = segue.destinationViewController;
        
        destVC.theEvent = [plannerEvents objectAtIndex:indexPath.row];
    }
}

@end
