//
//  skiModel.m
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 4/22/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import "SkiModel.h"

@implementation SkiModel


-(id)init
{
    self = [super init];
    
    if (self) {

        _sidecut = 10;
        //_camber = @"rocker";
        _skiType = @"early rise";
        _skiLength = 140;
    }
    
    return self;
}

+(NSMutableArray*)createSkis:(Skier*)skier
{
    NSMutableArray* skiList;
    
    if ([skier.terrain isEqualToString:@"Powder"]) {
        SkiModel *ski1 = [[SkiModel alloc] init];
        SkiModel *ski2 = [[SkiModel alloc] init];
        SkiModel *ski3 = [[SkiModel alloc] init];
        
        [skiList addObjectsFromArray:@[ski1,ski2,ski3]];
    }
         
    return skiList;
}
 
 
 
 
/*
 
 waist width
 
 60 - 79
 80 - 89
 90 - 99
 100 - 120
 >120
 
 
 < 16m      short           carving
 17 - 22m   medium          all-moutain, park pipe
 >22m       long            powder, big-mountain
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

*/


@end
