//
//  IBSViewController.h
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 4/19/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IBSCollectionViewController.h"
#import "IBSOverViewController.h"
@interface IBSViewController : UIViewController <IBSOverViewControllerDelegate>



- (IBAction)genderButtonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *genderLabel;
- (IBAction)heightButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *heightButton;
@property (weak, nonatomic) IBOutlet UITextField *heightLabel;
- (IBAction)experienceButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *experienceButton;
@property (weak, nonatomic) IBOutlet UITextField *experienceLabel;
- (IBAction)weightButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *weightButton;
@property (weak, nonatomic) IBOutlet UITextField *weightLabel;
- (IBAction)terrainButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *terrainButton;
@property (weak, nonatomic) IBOutlet UITextField *terrainLabel;
- (IBAction)typeOfTurnsButtonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *typeOfTurnsButton;
@property (weak, nonatomic) IBOutlet UITextField *typeOfTurnsLabel;
@property (weak, nonatomic) IBOutlet UIButton *calculateRecommendation;
- (IBAction)calcButton:(UIButton *)sender;


- (IBAction)removePickerPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *removeButton;


@property(retain,nonatomic) IBOutlet UIPickerView *genderPicker;
@property(retain,nonatomic) IBOutlet UIPickerView *heightPicker;
@property(retain,nonatomic) IBOutlet UIPickerView *weightPicker;
@property(retain,nonatomic) IBOutlet UIPickerView *experiencePicker;
@property(retain,nonatomic) IBOutlet UIPickerView *terrainPicker;
@property(retain,nonatomic) IBOutlet UIPickerView *turnPicker;
@property(strong,nonatomic) IBOutlet NSArray *pickerData;


-(void)didCancel;


@end
NSArray *fourthQuestion;
