//
//  IBSCollectionViewCell.h
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 5/14/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IBSCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *sidecutLabel;
@property (weak, nonatomic) IBOutlet UILabel *skiTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *skiLengthLabel;

@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *xpLabel;
@property (weak, nonatomic) IBOutlet UILabel *terrainLabel;
@property (weak, nonatomic) IBOutlet UILabel *turnLabel;


@end
