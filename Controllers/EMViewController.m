//
//  ViewController.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 02.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "EMViewController.h"

@interface EMViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *doctorsImg;
@property (strong, nonatomic) IBOutlet UILabel *doctorsName;
@property (weak, nonatomic) IBOutlet UILabel *doctorsRating;

@end

@implementation EMViewController
{
    NSUInteger index;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.doctorsImg.layer.cornerRadius = self.doctorsImg.frame.size.width / 2;
    self.doctorsImg.clipsToBounds = YES;
    self.doctorsImg.layer.borderWidth = 3.0f;
    self.doctorsImg.layer.borderColor = [UIColor orangeColor].CGColor;
    
    index = 0;
    self.doctor = self.doctors [index];
    [self fillTheView];
   
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(plusButton:)];
    [swipeRight setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.view addGestureRecognizer:swipeRight];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(minusButton:)];
    [swipeLeft setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [self.view addGestureRecognizer:swipeLeft];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSUInteger)returnToTheBeggining
{
    if (index >= [self.doctors count]) index = 0;
    return index;
        
}
- (IBAction)plusButton:(id)sender
{
    index++;
    self.doctor.rating = @(self.doctor.rating.integerValue +1);
    index = [self returnToTheBeggining];
    self.doctor = self.doctors[index];
    [self fillTheView];

}
- (IBAction)minusButton:(id)sender
{
    index++;
    index = [self returnToTheBeggining];
    self.doctor = self.doctors[index];
    [self fillTheView];

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowAll"]) {
        EMTableViewController *EMTVController = (EMTableViewController *)segue.destinationViewController;
        EMTVController.doctors = self.doctors;
        EMTVController.doctor = self.doctor;
        
    }
}
-(void)fillTheView
{
    self.doctorsImg.image = [UIImage imageNamed:self.doctor.faceOfDoctor];
    self.doctorsName.text = self.doctor.nameOfDoctor;
    self.doctorsRating.text = [NSString stringWithFormat:@"%@", self.doctor.rating];
}

@end
