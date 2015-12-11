//
//  AddCharViewController.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 10.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "AddCharViewController.h"

@interface AddCharViewController ()

@end

@implementation AddCharViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButton:(id)sender {
    [self.delegate cancelButtonDidPress];
}

- (IBAction)saveButton:(id)sender {
    NSNumber *rating = [NSNumber numberWithInt:0];
    Doctor *newDoctor = [[Doctor alloc] initWithName:self.enterName.text
                                             andFace:@"12"
                                           andRating:rating
                                          andDetails:@"NO"];
    [self.delegate saveButtonDidPress:newDoctor];
}
@end
