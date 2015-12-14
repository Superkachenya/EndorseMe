//
//  EMTableViewController.h
//  EndorseMe
//
//  Created by Voitenko Daniil on 03.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"
#import "EMTableViewCell.h"
#import "EMCollectionViewController.h"
#import "AddCharViewController.h"

@interface EMTableViewController : UITableViewController <AddCharDelegate>

@property (nonatomic, strong) NSMutableArray *doctors;
@property (nonatomic,strong) Doctor *doctor;

@end
