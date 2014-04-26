//
//  ProteinTrackerViewController.m
//  ProteinTracker
//
//  Created by MAKSOOD MOHIUDDIN on 3/1/14.
//  Copyright (c) 2014 MAKSOOD MOHIUDDIN. All rights reserved.
//

#import "ProteinTrackerViewController.h"

@interface ProteinTrackerViewController ()

@end

@implementation ProteinTrackerViewController

- (id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        amountHistory = [[NSMutableArray alloc] init];
    }
    return self;
    
}

- (void) goalChanged:(NSNotification *)notification
{
    NSUserDefaults *defaults = (NSUserDefaults *) [notification object];
    
    NSInteger goal = [defaults integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat: @"%d",goal];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSInteger goal = [[NSUserDefaults standardUserDefaults] integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat: @"%d",goal];
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(goalChanged:) name:NSUserDefaultsDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonClicked:(id)sender
{
    total += self.amountTextField.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat: @"%d", total ];
    [amountHistory addObject:[NSNumber numberWithInt:self.amountTextField.text.intValue]];
    
    if(total >= self.goalLabel.text.intValue)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message: @"you have reached your goal" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (IBAction)unwindtoProteinTracker:(UIStoryboardSegue *)segue
{
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue.identifier isEqualToString: @"showHistory"])
    {
        HistoryViewController *controller = (HistoryViewController *) segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
}


@end
