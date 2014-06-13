//
//  IBSViewController.m
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 4/19/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import "DuplicateViewController.h"

@interface DuplicateViewController ()


@end

@implementation DuplicateViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)back:(UIButton *)sender {
    


}









#pragma mark iAd Delegate Methods
/*
-(BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    
    return YES;
}
-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    
    NSLog(@"ad now available");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
}
-(void)bannerViewActionDidFinish:(ADBannerView *)banner
{
    
    
}
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    NSLog(@"didFailToRecieveAdWithError %@", error);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}
*/


@end
