//
//  AddCharViewController.h
//  EndorseMe
//
//  Created by Voitenko Daniil on 10.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"


@protocol AddCharDelegate <NSObject>

-(void)cancelButtonDidPress;
-(void)saveButtonDidPress:(Doctor *)newDoctor;

@end

@interface AddCharViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *enterName;
@property(nonatomic, strong) id <AddCharDelegate>delegate;


- (IBAction)cancelButton:(id)sender;
- (IBAction)saveButton:(id)sender;

@end
