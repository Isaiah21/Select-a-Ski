//
//  IBSViewController.m
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 4/19/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import "IBSViewController.h"
#import "IBSCollectionViewController.h"
#import "IBSOverViewController.h"
@interface IBSViewController ()
{
    NSArray *theCurrentArray;
    NSArray *firstQuestion;
    NSArray *secondQuestion;
    NSArray *secondQInches;
    NSArray *thirdQuestion;
    NSArray *fifthQuestion;
    NSArray *fifthBeginner;
    NSArray *fifthIntermediate;
    NSArray *sixthQuestion;
    NSMutableDictionary *answers;
    
    NSArray *placeHolder;
    
    UITextField *current;
    NSString *holderString;
    
}
@end

@implementation IBSViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    theCurrentArray = [[NSArray alloc]initWithObjects: nil];
    placeHolder = [[NSArray alloc]initWithObjects: nil];
    firstQuestion = [[NSArray alloc]initWithObjects:@"Female",@"Male",nil];
    secondQuestion = [[NSArray alloc]initWithObjects:@"4ft 4in", @"4ft 5in", @"4ft 6in",@"4ft 7in",@"4ft 8in",@"4ft 9in",@"4ft 10in",@"4ft 11in",@"5ft",@"5ft 1in",@"5ft 2in",@"5ft 3in",@"5ft 4in",@"5ft 5in",@"5ft 6in",@"5ft 7in",@"5ft 8in",@"5ft 9in",@"5ft 10in",@"5ft 11in",@"6ft",@"6ft 1in",@"6ft 2in", @"6ft 3in", @"6ft 4+in", nil];
    secondQInches = @[@52, @53, @54, @55, @56, @57, @58, @59, @60, @61, @62, @63, @64, @65, @66, @67, @68, @69, @70, @71, @72, @73, @74];
    
    thirdQuestion = [[NSArray alloc]initWithObjects:@"Beginner",@"Intermediate",@"Advanced",@"Expert",nil];
    
    fourthQuestion = [[NSArray alloc]initWithObjects:@"100 to 110lbs", @"110 to 120lbs", @"120 to 130lbs",@"130 to 140lbs",@"140 to 150lbs",@"150 to 160lbs",@"160 to 170lbs",@"170 to 180lbs",@"180 to 190lbs",@"190 to 200lbs",@"200+lbs",nil];
    
    
    fifthQuestion = [[NSArray alloc]initWithObjects:@"Powder",@"All Mountain",@"Groomers",@"Park & Pipe",@"Big Mountain",@"Carving",nil];
    fifthBeginner= [[NSArray alloc]initWithObjects:@"Groomers",@"Park & Pipe",nil];
    fifthIntermediate= [[NSArray alloc]initWithObjects:@"Powder",@"All Mountain",@"Groomers",@"Park & Pipe",@"Carving",nil];
    sixthQuestion = [[NSArray alloc]initWithObjects:@"Short",@"Medium",@"Long",nil];
	// Do any additional setup after loading the view, typically from a nib.
    if (!answers) {
        answers = [[NSMutableDictionary alloc] init];
    }
    
    //  [answers addEntriesFromDictionary:@{@"gender":@"male"}];
    // Question1Box.text = [settings objectForKey:@"gender"];
    
    
    _heightButton.enabled = NO;
    
    _experienceButton.enabled = NO;
    
    _weightButton.enabled = NO;
    
    _terrainButton.enabled = NO;
    
    _typeOfTurnsButton.enabled = NO;
    
    _calculateRecommendation.alpha = 0;
    
    
}

-(void)didCancel
{
    
    _heightButton.enabled = YES;
    
    _experienceButton.enabled = YES;
    
    _weightButton.enabled = YES;
    
    _terrainButton.enabled = YES;
    
    _typeOfTurnsButton.enabled = YES;
    
    _calculateRecommendation.alpha = 1;

    theCurrentArray = [[NSArray alloc]initWithObjects: nil];
    
    _pickerData = nil;
    
    
    [_genderPicker reloadAllComponents];
    [_heightPicker reloadAllComponents];
    [_weightPicker reloadAllComponents];
    [_experiencePicker reloadAllComponents];
    [_terrainPicker reloadAllComponents];
    [_turnPicker reloadAllComponents];

    
    [self removePickerPressed:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    
    
    
    

    
    
    
}

/*
 -(NSArray *)chooseArray:(int)param
 {
 
 NSArray *array =[[NSArray alloc]initWithObjects:firstQuestion, secondQuestion, thirdQuestion, fourthQuestion, fifthBeginner, fifthIntermediate,fifthQuestion, sixthQuestion, nil];
 return array[param];
 }
 -(NSString *)chooseText:(int)param second:(int)number
 {
 // NSArray *array = [chooseArray makeObjectsPerformSelector:@selector(@)];
 NSString *new = array[number];
 return @"g";
 }*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}
-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [_pickerData count];
    
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.pickerData objectAtIndex:row];
}
-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSInteger select = row;
    current.text = theCurrentArray[0];
    
    if (select==0) {
        current.text = theCurrentArray[0];
    }else if (select==1){
        current.text = theCurrentArray[1];
    } else if (select==2){
        current.text = theCurrentArray[2];
    }else if (select==3){
        current.text = theCurrentArray[3];
    }else if (select==4){
        current.text = theCurrentArray[4];
    }else if (select==5){
        current.text = theCurrentArray[5];
    }else if (select==6){
        current.text = theCurrentArray[6];
    }else if (select==7){
        current.text = theCurrentArray[7];
    }else if (select==8){
        current.text = theCurrentArray[8];
    }else if (select==9){
        current.text = theCurrentArray[9];
    }else if (select==10){
        current.text = theCurrentArray[10];
    }else if (select==11){
        current.text = theCurrentArray[11];
    }else if (select==12){
        current.text = theCurrentArray[12];
    }else if (select==13){
        current.text = theCurrentArray[13];
    }else if (select==14){
        current.text = theCurrentArray[14];
    }else if (select==15){
        current.text = theCurrentArray[15];
    }else if (select==16){
        current.text = theCurrentArray[16];
    }else if (select==17){
        current.text = theCurrentArray[17];
    }else if (select==18){
        current.text = theCurrentArray[18];
    }else if (select==19){
        current.text = theCurrentArray[19];
    }else if (select==20){
        current.text = theCurrentArray[20];
    }
    if((current == _terrainLabel) && (_terrainPicker.alpha = 1))
    {
        
        if([_terrainLabel.text  isEqual: @"Powder"])
        {
            _terrainPicker.backgroundColor = [UIColor greenColor];
        }
        else if([_terrainLabel.text  isEqual: @"All Mountain"])
        {
            _terrainPicker.backgroundColor = [UIColor redColor];
        }
        else if([_terrainLabel.text  isEqual: @"Groomers"])
        {
            _terrainPicker.backgroundColor = [UIColor blueColor];
        }
        else if([_terrainLabel.text  isEqual: @"Park & Pipe"])
        {
            _terrainPicker.backgroundColor = [UIColor cyanColor];
        }
        else if([_terrainLabel.text  isEqual: @"Big Mountain"])
        {
            _terrainPicker.backgroundColor = [UIColor purpleColor];
        }
        else if([_terrainLabel.text  isEqual: @"Carving"])
        {
            _terrainPicker.backgroundColor = [UIColor brownColor];
        }
    }
    
}

- (IBAction)genderButtonPressed:(UIButton *)sender {
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    _heightPicker.alpha = 0;
    _experiencePicker.alpha = 0;
    _weightPicker.alpha = 0;
    _terrainPicker.alpha = 0;
    _turnPicker.alpha = 0;
    
    [[_genderPicker superview] bringSubviewToFront:_genderPicker];
    _genderPicker.backgroundColor = [UIColor clearColor];
    _genderPicker.alpha = 1;
    _removeButton.alpha = 1;
    current = _genderLabel;
    theCurrentArray = firstQuestion;
    if([current.text isEqual:@""])
    {
        current.text = theCurrentArray[0];
    }
    self.pickerData = firstQuestion;
    if (![_genderLabel.text isEqual:nil])
    {
        NSInteger pickerNumber = [theCurrentArray indexOfObject:current.text];
        if (pickerNumber == NSNotFound) {
            pickerNumber = 0;
        }
        [_genderPicker selectRow:pickerNumber inComponent:0 animated:YES];
    }
    //NSLog(@"Number of Components: %ld", (long)[_picker numberOfRowsInComponent:0]);
    
    [_genderPicker reloadAllComponents];
    [self saveAll];
    
}

- (IBAction)heightButtonPressed:(UIButton *)sender {
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    _genderPicker.alpha = 0;
    _experiencePicker.alpha = 0;
    _weightPicker.alpha = 0;
    _terrainPicker.alpha = 0;
    _turnPicker.alpha = 0;
    
    [[_heightPicker superview] bringSubviewToFront:_heightPicker];
    
    _heightPicker.backgroundColor = [UIColor clearColor];
    _heightPicker.alpha = 1;
    _removeButton.alpha = 1;
    current = _heightLabel;
    theCurrentArray = secondQuestion;
    if([current.text isEqual:@""])
    {
        current.text = theCurrentArray[0];
        
    }
    self.pickerData = secondQuestion;
    if (![_heightLabel.text isEqual:nil])
    {
        NSInteger pickerNumber = [theCurrentArray indexOfObject:current.text];
        if (pickerNumber == NSNotFound) {
            pickerNumber = 0;
        }
        [_heightPicker selectRow:pickerNumber inComponent:0 animated:YES];
    }
    [_heightPicker reloadAllComponents];
    [self saveAll];

    
}

- (IBAction)experienceButtonPressed:(UIButton *)sender {
    _genderPicker.alpha = 0;
    _heightPicker.alpha = 0;
    _weightPicker.alpha = 0;
    _terrainPicker.alpha = 0;
    _turnPicker.alpha = 0;
    
    [[_experiencePicker superview] bringSubviewToFront:_experiencePicker];
    
    _experiencePicker.backgroundColor = [UIColor clearColor];
    _experiencePicker.alpha = 1;
    _removeButton.alpha = 1;
    current = _experienceLabel;
    theCurrentArray = thirdQuestion;
    if([current.text isEqual:@""])
    {
        current.text = theCurrentArray[0];
        
    }
    self.pickerData = thirdQuestion;
    if (![_experienceLabel.text isEqual:nil])
    {
        NSInteger pickerNumber = [theCurrentArray indexOfObject:current.text];
        if (pickerNumber == NSNotFound) {
            pickerNumber = 0;
        }
        [_experiencePicker selectRow:pickerNumber inComponent:0 animated:YES];
    }
    
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    
    [_experiencePicker reloadAllComponents];
    [self saveAll];
    
}

- (IBAction)weightButtonPressed:(UIButton *)sender {
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    _genderPicker.alpha = 0;
    _heightPicker.alpha = 0;
    _experiencePicker.alpha = 0;
    _terrainPicker.alpha = 0;
    _turnPicker.alpha = 0;
    
    [[_weightPicker superview] bringSubviewToFront:_weightPicker];
    
    _weightPicker.backgroundColor = [UIColor clearColor];
    _weightPicker.alpha = 1;
    _removeButton.alpha = 1;
    current = _weightLabel;
    theCurrentArray = fourthQuestion;
    if([current.text isEqual:@""])
    {
        current.text = theCurrentArray[0];
        
    }
    self.pickerData = fourthQuestion;
    if (![_weightLabel.text isEqual:nil])
    {
        NSInteger pickerNumber = [theCurrentArray indexOfObject:current.text];
        if (pickerNumber == NSNotFound) {
            pickerNumber = 0;
        }
        [_weightPicker selectRow:pickerNumber inComponent:0 animated:YES];
    }
    [_weightPicker reloadAllComponents];
    [self saveAll];
    
}

- (IBAction)terrainButtonPressed:(UIButton *)sender {
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    _genderPicker.alpha = 0;
    _heightPicker.alpha = 0;
    _experiencePicker.alpha = 0;
    _weightPicker.alpha = 0;
    _turnPicker.alpha = 0;
    
    [[_terrainPicker superview] bringSubviewToFront:_terrainPicker];
    
    _terrainPicker.alpha = 1;
    _removeButton.alpha = 1;
    current = _terrainLabel;
    if ([_experienceLabel.text  isEqual: @"Beginner"])
    {
        theCurrentArray = fifthBeginner;
        self.pickerData = fifthBeginner;
    }else if([_experienceLabel.text isEqual:@"Intermediate"])
    {
        theCurrentArray = fifthIntermediate;
        self.pickerData = fifthIntermediate;
    }else
    {
        theCurrentArray = fifthQuestion;
        self.pickerData = fifthQuestion;
    }
    if([current.text isEqual:@""])
    {
        current.text = theCurrentArray[0];
        
    }
    if (![_terrainLabel.text isEqual:nil])
    {
        NSInteger pickerNumber = [theCurrentArray indexOfObject:current.text];
        if (pickerNumber == NSNotFound) {
            pickerNumber = 0;
        }
        [_terrainPicker selectRow:pickerNumber inComponent:0 animated:YES];
    }
    if((current == _terrainLabel) && (_terrainPicker.alpha = 1))
    {
        
        if([_terrainLabel.text  isEqual: @"Powder"])
        {
            _terrainPicker.backgroundColor = [UIColor greenColor];
        }
        else if([_terrainLabel.text  isEqual: @"All Mountain"])
        {
            _terrainPicker.backgroundColor = [UIColor redColor];
        }
        else if([_terrainLabel.text  isEqual: @"Groomers"])
        {
            _terrainPicker.backgroundColor = [UIColor blueColor];
        }
        else if([_terrainLabel.text  isEqual: @"Park & Pipe"])
        {
            _terrainPicker.backgroundColor = [UIColor cyanColor];
        }
        else if([_terrainLabel.text  isEqual: @"Big Mountain"])
        {
            _terrainPicker.backgroundColor = [UIColor purpleColor];
        }
        else if([_terrainLabel.text  isEqual: @"Carving"])
        {
            _terrainPicker.backgroundColor = [UIColor brownColor];
        }
    }
    [_terrainPicker reloadAllComponents];
    [self saveAll];

    
}

- (IBAction)typeOfTurnsButtonPressed:(UIButton *)sender {
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    _genderPicker.alpha = 0;
    _heightPicker.alpha = 0;
    _experiencePicker.alpha = 0;
    _weightPicker.alpha = 0;
    _terrainPicker.alpha = 0;
    
    [[_turnPicker superview] bringSubviewToFront:_turnPicker];
    
    _turnPicker.backgroundColor = [UIColor clearColor];
    _turnPicker.alpha = 1;
    _removeButton.alpha = 1;
    current = _typeOfTurnsLabel;
    theCurrentArray = sixthQuestion;
    if([current.text isEqual:@""])
    {
        current.text = theCurrentArray[0];
        
    }
    self.pickerData = sixthQuestion;
    if (![_typeOfTurnsLabel.text isEqual:nil])
    {
        NSInteger pickerNumber = [theCurrentArray indexOfObject:current.text];
        if (pickerNumber == NSNotFound) {
            pickerNumber = 0;
        }
        [_turnPicker selectRow:pickerNumber inComponent:0 animated:YES];
    }
    [answers addEntriesFromDictionary:@{@"height":_heightLabel.text}];
    [_turnPicker reloadAllComponents];
    if( ![_genderLabel  isEqual: @""] && ![_heightLabel  isEqual: @""] && ![_experienceLabel isEqual: @""] && ![_weightLabel isEqual: @""] && ![_terrainLabel isEqual: @""] && ![_typeOfTurnsLabel isEqual: @""] )
    {
        _calculateRecommendation.alpha = 1;
    }
    
    [self saveAll];
    
}

- (IBAction)calcButton:(UIButton *)sender {
    
    if( ![_genderLabel  isEqual: @""] && ![_heightLabel  isEqual: @""] && ![_experienceLabel isEqual: @""] && ![_weightLabel isEqual: @""] && ![_terrainLabel isEqual: @""] && ![_typeOfTurnsLabel isEqual: @""] && [_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        [self saveAll];
        
        [self performSegueWithIdentifier:@"nextPage" sender:sender];
        
        
        
    }
    else{
        [self saveAll];
        
        _terrainLabel.text = @"";
    }
    
    
}


- (IBAction)removePickerPressed:(UIButton *)sender {
    _genderPicker.alpha = 0;
    _heightPicker.alpha = 0;
    _experiencePicker.alpha = 0;
    _terrainPicker.alpha = 0;
    _turnPicker.alpha = 0;
    _weightPicker.alpha = 0;
    
    
    _removeButton.alpha = 0;
    
    if (![_genderLabel.text isEqual:@""])
    {
        _heightButton.enabled = YES;
    }
    if (![_heightLabel.text isEqual:@""])
    {
        _weightButton.enabled = YES;
    }
    if (![_weightLabel.text isEqual:@""])
    {
        _experienceButton.enabled = YES;
    }
    if (![_experienceLabel.text isEqual:@""])
    {
        _terrainButton.enabled = YES;
    }
    if (![_terrainLabel.text isEqual:@""])
    {
        _typeOfTurnsButton.enabled = YES;
    }
    if (![_typeOfTurnsLabel.text isEqual:@""])
    {
        _calculateRecommendation.enabled = YES;
    }
    // [_picker reloadAllComponents];
    
    if ([_experienceLabel.text isEqualToString:[answers objectForKey:@"experience"]])
    {
        
    }
    else
    {
        _terrainLabel.text = @"";
    }
    
    [self saveAll];

    
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"nextPage"]) {
        if ([segue.destinationViewController isKindOfClass:[IBSOverViewController class]]) {
            IBSOverViewController* nextPage = segue.destinationViewController;
            nextPage.skier = [[Skier alloc] initWithData:answers];
            nextPage.delegate = self;
        }
    }
    
    
}


-(void)saveAll
{
    
    [answers addEntriesFromDictionary:@{@"gender":_genderLabel.text}];
    int heightLocation = [secondQuestion indexOfObject:_heightLabel.text];
    if (heightLocation < [secondQInches count]) {
            [answers addEntriesFromDictionary:@{@"height":secondQInches[heightLocation]}];
    }

                                        //@"height":_heightLabel.text}];
    
    [answers addEntriesFromDictionary:@{@"experience":_experienceLabel.text}];
    int weightSection = [fourthQuestion indexOfObject:_weightLabel.text];
    [answers addEntriesFromDictionary:@{@"weight":[NSString stringWithFormat:@"%d",weightSection]}];
    [answers addEntriesFromDictionary:@{@"terrain":_terrainLabel.text}];
    [answers addEntriesFromDictionary:@{@"turns":_typeOfTurnsLabel.text}];
    
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
