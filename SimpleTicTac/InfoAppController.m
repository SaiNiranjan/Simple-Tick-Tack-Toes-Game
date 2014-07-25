//
//  InfoAppController.m
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/21/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "InfoAppController.h"

@interface InfoAppController ()

@end

@implementation InfoAppController
@synthesize segmentDescription  = _segmentDescription;
@synthesize textView = _textView;

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
    self.view.backgroundColor = [UIColor blackColor];
    
    
    _textView.text = @"Tick-Tack-Toe is a game in which two players alternately put Xs and Os in compartments of a figure formed by a square grid of 9/16/25 spaces,each one  tries to get a row of three/four/five Xs or three/four/five Os before the opponent does.\n                A player can play perfect tic-tac-toe (win or draw) given they choose the first possible move from the following list.\n      'Win': If the player has two in a row, he or she can place a third to get three in a row.\n\n'Block': If the [opponent] has two in a row, the player must play the third himself or herself to block them.\n\n'Fork': Creation of an opportunity where the player has two threats to win (two non-blocked lines of 2).\n'Blocking an opponent's fork':\n\nOption 1: The player should create two in a row to force the opponent into defending, as long as it doesn't result in them creating a fork. For example, if 'X' has a corner, 'O' has the center, and 'X' has the opposite corner as well, 'O' must not play a corner in order to win. (Playing a corner in this scenario creates a fork for 'X' to win.)\n\nOption 2: If there is a configuration where the opponent can fork, the player should block that fork.\n\n'Center': A player marks the center. (If it is the first move of the game, playing on a corner gives 'O' more opportunities to make a mistake and may therefore be the better choice; however, it makes no difference between perfect players.)\n\n'Opposite corner': If the opponent is in the corner, the player plays the opposite corner.\n\n'Empty corner': The player plays in a corner square.\n\n'Empty side': The player plays in a middle square on any of the 4 sides.";
    
    
    _textView.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:(18.0)];
    

    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) segmentDescriptionAction:(id)sender
{
    
    if (_segmentDescription.selectedSegmentIndex == 0)
    {
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.80];
      
        [UIView setAnimationTransition:
         UIViewAnimationTransitionCurlDown
                               forView:_textView cache:NO];
        
        
        [UIView commitAnimations];
        
        
        _textView.text = @"Tick-Tack-Toe is a game in which two players alternately put Xs and Os in compartments of a figure formed by a square grid of 9/16/25 spaces,each one  tries to get a row of three/four/five Xs or three/four/five Os before the opponent does.\n                A player can play perfect tic-tac-toe (win or draw) given they choose the first possible move from the following list.\n      'Win': If the player has two in a row, he or she can place a third to get three in a row.\n\n'Block': If the [opponent] has two in a row, the player must play the third himself or herself to block them.\n\n'Fork': Creation of an opportunity where the player has two threats to win (two non-blocked lines of 2).\n'Blocking an opponent's fork':\n\nOption 1: The player should create two in a row to force the opponent into defending, as long as it doesn't result in them creating a fork. For example, if 'X' has a corner, 'O' has the center, and 'X' has the opposite corner as well, 'O' must not play a corner in order to win. (Playing a corner in this scenario creates a fork for 'X' to win.)\n\nOption 2: If there is a configuration where the opponent can fork, the player should block that fork.\n\n'Center': A player marks the center. (If it is the first move of the game, playing on a corner gives 'O' more opportunities to make a mistake and may therefore be the better choice; however, it makes no difference between perfect players.)\n\n'Opposite corner': If the opponent is in the corner, the player plays the opposite corner.\n\n'Empty corner': The player plays in a corner square.\n\n'Empty side': The player plays in a middle square on any of the 4 sides.";
        
        
        _textView.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:(18.0)];

        
        
        
        
        
        

             

    }
    
    else if(_segmentDescription.selectedSegmentIndex == 1)
    {
     
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.80];
        
        [UIView setAnimationTransition:
         UIViewAnimationTransitionCurlUp
                               forView:_textView cache:NO];
        
    
        [UIView commitAnimations];
        
        
        _textView.text = @"Eminosoft is developing iPhone apps from 2008. Our development is spread to various domains relating to entertainment, sports, gaming, content management etc. Eminosoft is constantly updating its iPhone programming team with the state of art technology provided by Apple Inc.Eminosoft's own in-house data/web-service providers. Eminosoft has a dedicated team working on the various core features of the iOS. Eminosoft is backed with a good set of committed developers who are willing to build some ground-breaking Apps. ";
        
        _textView.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:(18.0)];
        
    }
}
- (IBAction)homeButton:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
