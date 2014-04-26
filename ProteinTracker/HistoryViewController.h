//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by MAKSOOD MOHIUDDIN on 3/1/14.
//  Copyright (c) 2014 MAKSOOD MOHIUDDIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController
{
    NSMutableArray *history;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLabel;

-(void) setHistory: (NSMutableArray *)h;

@end
