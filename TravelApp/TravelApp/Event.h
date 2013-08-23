//
//  Event.h
//  TravelApp
//
//  Created by Tristan on 21/08/13.
//  Copyright (c) 2013 Tristan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *time;
@property (weak, nonatomic) NSString *location;
@property (weak, nonatomic) NSString *bannerImage;

- (id) initWithName:(NSString *)name AndTime:(NSString *)theTime AndLocation:(NSString *)theLocation AndBanner:(NSString *)theBanner;

@end
