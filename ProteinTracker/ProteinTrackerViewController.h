//
//  ProteinTrackerViewController.h
//  ProteinTracker
//
//  Created by MAKSOOD MOHIUDDIN on 3/1/14.
//  Copyright (c) 2014 MAKSOOD MOHIUDDIN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface ProteinTrackerViewController : UIViewController
{
    int total;
    NSMutableArray *amountHistory;
    NSMutableArray *runIncremental;
}
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
- (IBAction)addButtonClicked:(id)sender;
- (IBAction)unwindtoProteinTracker:(UIStoryboardSegue *) segue;
- (void) goalChanged:(NSNotification *)notification;

@end
