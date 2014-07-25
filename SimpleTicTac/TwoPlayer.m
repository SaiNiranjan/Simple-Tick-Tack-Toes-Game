//
//  TwoPlayer.m
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "TwoPlayer.h"

@implementation TwoPlayer
@synthesize twoPlayer1Name;
@synthesize twoPlayer2Name;
@synthesize iAddForTwoplayer;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Two Player";
    self.view.backgroundColor = [UIColor blackColor];
   
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTwoPlayer1Name:nil];
    [self setTwoPlayer2Name:nil];
//    [self setIAddForTwoplayer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)twoPlayer1Action:(id)sender
{
    [sender resignFirstResponder]; 
}

- (IBAction)twoPlayer2Action:(id)sender
{
    [sender resignFirstResponder];  
}

- (IBAction)startButtonAction:(id)sender
{
    TicTacGame *ticTac = [[TicTacGame alloc]initWithNibName:@"TicTacGame" bundle:nil];
    ticTac.PlayerName1StringForOnePlayer = twoPlayer1Name.text;
    ticTac.PlayerName2StringForOnePlayer = twoPlayer2Name.text;
    
//    ViewController *viewController = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
//    [self.navigationController pushViewController:viewController animated:YES];
    
    if(([ticTac.PlayerName1StringForOnePlayer isEqualToString:@""] || [  ticTac.PlayerName2StringForOnePlayer isEqualToString:@""]) ||
       ([ticTac.PlayerName1StringForOnePlayer isEqualToString:@" "] || [ticTac.PlayerName2StringForOnePlayer isEqualToString:@" "]) ||
       ([ticTac.PlayerName1StringForOnePlayer isEqualToString:@"  "] || [ticTac.PlayerName2StringForOnePlayer isEqualToString:@"  "]) ||
       ([ticTac.PlayerName1StringForOnePlayer isEqualToString:@"   "] || [ticTac.PlayerName2StringForOnePlayer isEqualToString:@"   "]) ||
       ([ticTac.PlayerName1StringForOnePlayer isEqualToString:@"    "] || [ticTac.PlayerName2StringForOnePlayer isEqualToString:@"    "]) ||
       ([ticTac.PlayerName1StringForOnePlayer isEqualToString:@"      "] || [ticTac.PlayerName2StringForOnePlayer isEqualToString:@"      "]) )
    {
        UIAlertView *alertForText = [[UIAlertView alloc]initWithTitle:nil message:@"Enter Player Names" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alertForText show];
 
    }
    
    
    else if(([twoPlayer1Name.text length] == 0) || ([twoPlayer2Name.text length] ==0))
    {
        UIAlertView *alertForText = [[UIAlertView alloc]initWithTitle:nil message:@"Enter Player Names" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alertForText show];
    }
    else
    {
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.80];
        
        [UIView setAnimationTransition:
         UIViewAnimationOptionTransitionNone
                               forView:self.navigationController.view cache:NO];
        
        
        [self.navigationController pushViewController:ticTac animated:YES];
        [UIView commitAnimations];
        
    }
    
}
-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if(!iAddForTwoPlyr)
    {
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        [UIView commitAnimations];
        iAddForTwoPlyr = YES;
    }
    
}
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    
    if(iAddForTwoPlyr)
    {
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        [UIView commitAnimations];
        iAddForTwoPlyr = NO;
        
    }
}




@end
