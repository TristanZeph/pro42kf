//
//  EventDetailsVC.m
//  TravelApp
//
//  Created by Tristan on 21/08/13.
//  Copyright (c) 2013 Tristan. All rights reserved.
//

#import "EventDetailsVC.h"

@interface EventDetailsVC ()

@end

@implementation EventDetailsVC
@synthesize theEvent, eventBanner, eventDetails, myTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    myTableView.dataSource = self;
    myTableView.delegate = self;
    
    eventBanner.image = [UIImage imageNamed:theEvent.bannerImage];
    
    eventDetails = [[NSMutableArray alloc] init];
    [eventDetails addObject:@"Location"];
    [eventDetails addObject:theEvent.location];
    [eventDetails addObject:@"Time"];
    [eventDetails addObject:theEvent.time];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return eventDetails.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"eventDetailsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [eventDetails objectAtIndex:indexPath.row];
    return cell;
}

@end
