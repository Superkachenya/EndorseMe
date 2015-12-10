//
//  ViewController.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 02.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "EMViewController.h"

@interface EMViewController ()

@end

@implementation EMViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.doctorsImg.layer.cornerRadius = self.doctorsImg.frame.size.width / 2;
    self.doctorsImg.clipsToBounds = YES;
    self.doctorsImg.layer.borderWidth = 3.0f;
    self.doctorsImg.layer.borderColor = [UIColor orangeColor].CGColor;
    
    _index = 0;
    [self fillTheView];
  
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSUInteger)returnToTheBeggining
{
    if (self.index >= [self.doctors count]) self.index = 0;
    return self.index;
        
}
- (IBAction)plusButton:(id)sender //swipe right
{
    self.index++;
    self.doctor.rating = @(self.doctor.rating.integerValue +1);
    self.index = [self returnToTheBeggining];
    [self fillTheView];

}
- (IBAction)skipButton:(id)sender //swipe left
{
    self.index++;
    self.index = [self returnToTheBeggining];
    [self fillTheView];

}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowAll"]) {
        EMTableViewController *EMTVController = (EMTableViewController *)segue.destinationViewController;
        EMTVController.doctors = self.doctors;
        EMTVController.doctor = self.doctor;
    }
    //swipe up
    if ([segue.identifier isEqualToString:@"ShowDetails"]) {
        EMDetailsViewController *EMDController = (EMDetailsViewController *)segue.destinationViewController;
        EMDController.doctors = self.doctors;
        EMDController.doctor = self.doctor;
        EMDController.index = self.index;
        EMDController.delegate = self;
    }
}


-(void)fillTheView
{
    self.doctor = self.doctors [self.index];
    self.doctorsImg.image = [UIImage imageNamed:self.doctor.faceOfDoctor];
    self.doctorsName.text = self.doctor.nameOfDoctor;
    self.doctorsRating.text = [NSString stringWithFormat:@"%@", self.doctor.rating];
}

-(void)detailsViewcontrollerDismissedWithIndex:(NSUInteger)index
{
    self.index = index;
    [self fillTheView];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
