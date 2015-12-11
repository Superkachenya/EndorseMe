//
//  EMTableViewController.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 03.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "EMTableViewController.h"


@interface EMTableViewController ()

@end

@implementation EMTableViewController 

static NSString * const reuseIdentifier = @"EMCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.doctors count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EMTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Doctor *doctor = self.doctors [indexPath.row];
    cell.doctorsFace.image = [UIImage imageNamed:doctor.faceOfDoctor];
    cell.doctorsName.text = doctor.nameOfDoctor;
    cell.doctorsRating.text = [NSString stringWithFormat:@"%@", doctor.rating];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



#pragma mark - add character delegate
-(void)cancelButtonDidPress
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)saveButtonDidPress:(Doctor *)newDoctor
{
    [self.doctors addObject:newDoctor];
    
     NSIndexPath *indexPath = [NSIndexPath indexPathForRow:([self.doctors count] - 1) inSection:0];
     [self. tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
     [self dismissViewControllerAnimated:YES completion:nil];
     
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"AddChar"]) {
        UINavigationController *navigationController = segue.destinationViewController;
        AddCharViewController *addChar = [navigationController viewControllers][0];
        addChar.delegate = self;
    }
}

@end
