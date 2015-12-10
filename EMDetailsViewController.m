//
//  EMDetailsViewController.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 06.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "EMDetailsViewController.h"

@interface EMDetailsViewController ()


@end

@implementation EMDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fillTheView];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
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

-(void)fillTheView
{
    self.doctor = self.doctors [self.index];
    self.doctorsImg.image = [UIImage imageNamed:self.doctor.faceOfDoctor];
    self.doctorsName.text = self.doctor.nameOfDoctor;
    self.doctorsRating.text = [NSString stringWithFormat:@"%@", self.doctor.rating];
    self.doctorsDetails.text = self.doctor.details;
}
//swipe down
- (IBAction)cancelButton:(id)sender {
    
    [self.delegate detailsViewcontrollerDismissedWithIndex:self.index];
}

@end
