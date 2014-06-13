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
        _skiType = @"none";
        _skiLength = 140;
    }
    
    return self;
}

-(id)initWithSkier:(Skier*)skier
{
    self = [self init];
    
    if (self) {
        if (skier) {
            _sidecut = [self calculateSidecut:skier];
            _skiLength = [self calculateLength:skier];
            _skiType = @"camber";
        }
    }
    
    return self;
}



-(int)calculateSidecut:(Skier*)skier
{
 //ISAIAH - I tried to recreate this from your notes, but I'm not sure if this is what you meant. The numbers seem to get a little high. I hope it helps at least.
    if ([skier.terrain isEqualToString:@"Carving"] || [skier.terrain isEqualToString:@"Groomers"]) {
        if (skier.height < 59) {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 8;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 9;
            }
            else
            {
                return 10;
            }
        }
        else if (skier.height < 66)
        {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 11;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 12;
            }
            else
            {
                return 13;
            }
        }
        else
        {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 14;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 15;
            }
            else
            {
                return 16;
            }
        }
    }
    else if ([skier.terrain isEqualToString:@"All Mountain"] || [skier.terrain isEqualToString:@"Park & Pipe"])
        if (skier.height < 59) {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 17;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 18;
            }
            else
            {
                return 19;
            }
        }
        else if (skier.height < 66)
        {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 20;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 21;
            }
            else
            {
                return 22;
            }
        }
        else
        {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 23;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 24;
            }
            else
            {
                return 25;
            }
        }
    else //Powder and Big Mountain
    {
        if (skier.height < 59) {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 26;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 27;
            }
            else
            {
                return 28;
            }
        }
        else if (skier.height < 66)
        {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 29;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 30;
            }
            else
            {
                return 31;
            }
        }
        else
        {
            if ([skier.turns isEqualToString:@"Short"])
            {
                return 32;
            }
            else if ([skier.turns isEqualToString:@"Medium"])
            {
                return 33;
            }
            else
            {
                return 34;
            }
        }
    }
    return 8;
}

-(int)calculateLength:(Skier*)skier
{
    return 140;
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
