//
//  EventDetailsVC.h
//  TravelApp
//
//  Created by Tristan on 21/08/13.
//  Copyright (c) 2013 Tristan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Event.h"

@interface EventDetailsVC : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) Event *theEvent;
@property (weak, nonatomic) IBOutlet UIImageView *eventBanner;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSMutableArray *eventDetails;

@end
