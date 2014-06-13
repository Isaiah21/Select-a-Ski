//
//  IBSCollectionViewController.m
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 5/14/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import "IBSCollectionViewController.h"
#import "IBSCollectionViewCell.h"
#import "SkiModel.h"
#import "IBSViewController.h"
#import "IBSOverViewController.h"
@interface IBSCollectionViewController ()

@property (strong, nonatomic) NSMutableArray* skiArray;

@end

@implementation IBSCollectionViewController

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


-(NSMutableArray*)skiArray
{
    if (!_skiArray) {
        _skiArray = [[NSMutableArray alloc] init];
    }
    return _skiArray;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    IBSCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    if ([self.skiArray count] > 0)
    {
        SkiModel* ski = self.skiArray[indexPath.row];
        //cell.imageView.image = ski.image;
        cell.sidecutLabel.text = [NSString stringWithFormat:@"%i m", ski.sidecut];
        cell.skiTypeLabel.text = ski.skiType;
        cell.skiLengthLabel.text = [NSString stringWithFormat:@"%i cm", ski.skiLength];
    }

    cell.genderLabel.text = self.skier.gender;
    cell.heightLabel.text = [NSString stringWithFormat:@"%i ft %i in", self.skier.height/12, self.skier.height%12];
    cell.weightLabel.text = fourthQuestion[self.skier.weight];
    cell.xpLabel.text = self.skier.experience;
    cell.terrainLabel.text = self.skier.terrain;
    cell.turnLabel.text = self.skier.turns;
    
    //add others
    return cell;
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //return [self.skiArray count];
    return 2;
}


- (IBAction)back:(UIButton *)sender {
    
    [self.delegate didCancel];
    
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
