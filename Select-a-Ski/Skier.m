//
//  Skier.m
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 5/14/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import "Skier.h"

@implementation Skier


-(id)initWithData:(NSDictionary*)data
{
    _gender = [data objectForKey:@"gender"];
    //_height = [data objectForKey:@"height"]];
    _height = [[data objectForKey:@"height"] integerValue];
    _weight = [[data objectForKey:@"weight"] integerValue];
    _experience = [data objectForKey:@"experience"];
    _terrain = [data objectForKey:@"terrain"];
    _turns = [data objectForKey:@"turns"];
                   
    return self;
}










@end
