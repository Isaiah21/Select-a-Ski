//
//  IBSOverViewController.m
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 5/14/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import "IBSOverViewController.h"
#import "IBSCollectionViewController.h"
@interface IBSOverViewController ()

@end

@implementation IBSOverViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(UIButton *)sender {
    
    //[self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate didCancel];
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toInfo"]) {
        if ([segue.destinationViewController isKindOfClass:[IBSCollectionViewController class]]) {
            IBSCollectionViewController* nextPage = segue.destinationViewController;
            nextPage.skier = self.skier;
            
        }
    }
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
