//
//  HistoryViewController.m
//  ProteinTracker
//
//  Created by MAKSOOD MOHIUDDIN on 3/1/14.
//  Copyright (c) 2014 MAKSOOD MOHIUDDIN. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSMutableString *text = [[NSMutableString alloc] init];
    for (NSNumber *n in history) {
        [text appendFormat:@"%@\n", n];
    }
    
    self.historyLabel.text = text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setHistory:(NSMutableArray *)h
{
    history = h;
}

@end
