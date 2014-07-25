//
//  OnePlayer.m
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "OnePlayer.h"

@implementation OnePlayer
@synthesize onePlayer1Outlet;
@synthesize onePlayer2Outlet;
@synthesize iAddForOnePlayer;

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
    self.navigationItem.title = @"One Player";
    self.view.backgroundColor = [UIColor blackColor];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setOnePlayer1Outlet:nil];
    [self setOnePlayer2Outlet:nil];
  
    [self setIAddForOnePlayer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)onePlayer1Action:(id)sender 
{
    [sender resignFirstResponder];
}

- (IBAction)onePlayer2Action:(id)sender
{
    [sender resignFirstResponder];
    
}
- (IBAction)startButtonAction:(id)sender 
{
   TicTacForOnePlayer *ticTacForOnePlayer = [[TicTacForOnePlayer alloc]initWithNibName:@"TicTacForOnePlayer" bundle:nil];
    
    ticTacForOnePlayer.PlayerName1StringFor1Player = onePlayer1Outlet.text;
    ticTacForOnePlayer.PlayerName2StringFor1Player = onePlayer2Outlet.text;
    NSLog(@"the two player names are %@ and %@ ",ticTacForOnePlayer.PlayerName1StringFor1Player,ticTacForOnePlayer.PlayerName2StringFor1Player);
    
    if(([ticTacForOnePlayer.PlayerName1StringFor1Player isEqualToString:@""] || [  ticTacForOnePlayer.PlayerName2StringFor1Player isEqualToString:@""]) ||
       ([ticTacForOnePlayer.PlayerName1StringFor1Player isEqualToString:@" "] || [ticTacForOnePlayer.PlayerName2StringFor1Player isEqualToString:@" "]) ||
       ([ticTacForOnePlayer.PlayerName1StringFor1Player isEqualToString:@"  "] || [ticTacForOnePlayer.PlayerName2StringFor1Player isEqualToString:@"  "]) ||
       ([ticTacForOnePlayer.PlayerName1StringFor1Player isEqualToString:@"   "] || [ticTacForOnePlayer.PlayerName2StringFor1Player isEqualToString:@"   "]) ||
       ([ticTacForOnePlayer.PlayerName1StringFor1Player isEqualToString:@"    "] || [ticTacForOnePlayer.PlayerName2StringFor1Player isEqualToString:@"    "]) ||
       ([ticTacForOnePlayer.PlayerName1StringFor1Player isEqualToString:@"      "] || [ticTacForOnePlayer.PlayerName2StringFor1Player isEqualToString:@"      "]) )
    
    {
        
        UIAlertView *alertForTextField = [[UIAlertView alloc]initWithTitle:nil message:@"Enter Player Names" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alertForTextField show];
        
        
    }
    else if([onePlayer1Outlet.text length] ==0 || [onePlayer2Outlet.text length] ==0)
    {
        UIAlertView *alertForTextField = [[UIAlertView alloc]initWithTitle:nil message:@"Enter Player Names" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alertForTextField show];
    }
    
     else
     {
        
         [UIView beginAnimations:nil context:nil];
         [UIView setAnimationDuration:0.80];
       
         [UIView setAnimationTransition:
          UIViewAnimationOptionTransitionNone
                                forView:self.navigationController.view cache:NO];
         
         
         [self.navigationController pushViewController:ticTacForOnePlayer animated:YES];
         [UIView commitAnimations];
        
         
     }
    
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if(!iAddForOnePlyr)
    {
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        [UIView commitAnimations];
        iAddForOnePlyr = YES;
    }
    
}
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    
    if(iAddForOnePlyr)
    {
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        [UIView commitAnimations];
        iAddForOnePlyr = NO;
        
    }
}




@end
