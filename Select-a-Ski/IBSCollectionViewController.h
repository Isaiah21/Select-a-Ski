//
//  IBSCollectionViewController.h
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 5/14/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Skier.h"
@protocol IBSCollectionViewControllerDelegate <NSObject>

-(void)didCancel;
@end

@interface IBSCollectionViewController : UICollectionViewController
@property (strong, nonatomic) id <IBSCollectionViewControllerDelegate> delegate;

@property (strong, nonatomic) Skier* skier;


- (IBAction)back:(UIButton *)sender;

@end
