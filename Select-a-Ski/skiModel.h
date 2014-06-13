//
//  skiModel.h
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 4/22/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Skier.h"

@interface SkiModel : NSObject
//sidcut is in meters
@property (nonatomic) NSInteger sidecut;
@property (nonatomic) NSString* skiType;
//skilength is in cm
@property (nonatomic) NSInteger skiLength;

@property (nonatomic)id image;

@end
