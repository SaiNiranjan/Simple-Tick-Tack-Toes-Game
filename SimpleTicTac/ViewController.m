//
//  ViewController.m
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize onePlayerOutlet;
@synthesize twoPlayerOutlet;
@synthesize nearByOutlet;
@synthesize moreAppOutlet;
@synthesize optionsView;
@synthesize  spOutlet = _sqOutlet;
@synthesize nqOutlet = _nqOutlet;
@synthesize bgcOutlet = _bgcOutlet;
@synthesize dlOutlet = _dlOutlet;
@synthesize btOutlet = _btOutlet;
@synthesize lcOutlet = _lcOutlet;
@synthesize session =_session;
@synthesize iAddForViewController,jhansi;
@synthesize bgImgForVc = _bgImgForVc;




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    i = 0;
    j = 0;
    soundForTicTac = 0;
    soundForTicTac2 = 0;
 
    self.navigationItem.title = @"Tick-Tack-Toes";
     UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setTintColor:[UIColor blackColor]];
    //Setting Info button//
    
    info = [UIButton buttonWithType:UIButtonTypeInfoLight];
    [info setFrame:CGRectMake(5, 5, 50, 30)];
//    [info setImage:[UIImage imageNamed:@"back-button.png"] forState:UIControlStateNormal];
//    [back setTitle:@"Back" forState:UIControlStateNormal];
    [self.view addSubview:info];
    [info setShowsTouchWhenHighlighted:YES];
    [info addTarget:self action:@selector(infoAction:) forControlEvents:UIControlEventTouchDown];
    infoBarButton = [[UIBarButtonItem alloc]initWithCustomView:info];
    self.navigationItem.rightBarButtonItem = infoBarButton;
    
    
    
    //Setting Home Button//
    
    
    
   homeImage = [UIImage imageNamed:@"back-button.png"];
    CGRect frameForSound = CGRectMake(0, 0, 50 , 30);
    homeButton = [[UIButton alloc]initWithFrame:frameForSound];
    [homeButton setBackgroundImage:homeImage forState:UIControlStateNormal];
    [homeButton addTarget:self action:@selector(homeForGame:) forControlEvents:UIControlEventTouchUpInside];
    [homeButton setShowsTouchWhenHighlighted:YES];
    homeBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:homeButton];
    self.navigationItem.leftBarButtonItem = homeBarButtonItem;
    
    homeButton.hidden = YES;
    
    
    _bgImgForVc.image = [UIImage imageNamed:@"bg.png"];
  
    /*****************for SoundEffects***********/
    
    NSURL *soundEffectUrl = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Apple_Ring.mp3",[[NSBundle mainBundle] resourcePath]]];
    NSError *error;
    
    SoundForGame = [[AVAudioPlayer alloc]initWithContentsOfURL:soundEffectUrl error:&error ];
    SoundForGame.numberOfLoops = -1;

    optionsView.hidden =YES;
    /***************for More Apps*******/
    _sqOutlet.enabled = NO;
    _nqOutlet.enabled = NO;
    _bgcOutlet.enabled = NO;
    _dlOutlet.enabled = NO;
    _btOutlet.enabled = NO;
   _lcOutlet.enabled = NO;
    
  
}

- (void)viewDidUnload
{
    [self setOnePlayerOutlet:nil];
    [self setTwoPlayerOutlet:nil];
    [self setNearByOutlet:nil];
    [self setMoreAppOutlet:nil];
    [self setOptionsView:nil];
    [self setSpOutlet:nil];
    [self setNqOutlet:nil];
    [self setBgcOutlet:nil];
    [self setDlOutlet:nil];
    [self setBtOutlet:nil];
    [self setLcOutlet:nil];
//    [self setIAddForViewController:nil];
    [self setBgImgForVc:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


-(IBAction)homeForGame:(id)sender
{
    optionsView.hidden = YES;
    info.hidden = NO;
    homeButton.hidden = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    
    
    
    
    
    
    [super viewWillAppear:animated];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return NO;
}

- (IBAction)onePlayerAction:(id)sender 
{
    OnePlayer *onePlayer = [[OnePlayer alloc]initWithNibName:@"OnePlayer" bundle:nil];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.80];
 
    [UIView setAnimationTransition:
    UIViewAnimationOptionTransitionNone
                           forView:self.navigationController.view cache:NO];
    
    
    [self.navigationController pushViewController:onePlayer animated:YES];
    [UIView commitAnimations];
    NSLog(@"one player button is pressed");
}

- (IBAction)twoPlayerAction:(id)sender
{
    
   
        
    
    TwoPlayer *twoPlayer = [[TwoPlayer alloc]initWithNibName:@"TwoPlayer" bundle:nil];
   
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.80];
    
    [UIView setAnimationTransition:
    UIViewAnimationOptionTransitionNone
                           forView:self.navigationController.view cache:NO];
    
    
    [self.navigationController pushViewController:twoPlayer animated:YES];
    [UIView commitAnimations];

    NSLog(@"two player button is pressed");
    
}

- (IBAction)nearByAction:(id)sender
{
    alertForNearBy = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Other Device must be registered through Gamecenter before you pair the two devices.." delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    alertForNearBy.alertViewStyle =UIAlertViewStyleDefault;
    [alertForNearBy show];
    

}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        if (self.session == nil)
        {
            //create peer picker and show picker of connections
            GKPeerPickerController *peerPicker = [[GKPeerPickerController alloc] init];
            peerPicker.delegate = self;
            peerPicker.connectionTypesMask = GKPeerPickerConnectionTypeNearby;
            [peerPicker show];
        }
    }
}
- (GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type
{
    //create ID for session
    NSString *sessionIDString = @"MTBluetoothSessionID";
    
    //create GKSession object
    GKSession *session = [[GKSession alloc] initWithSessionID:sessionIDString displayName:nil sessionMode:GKSessionModePeer];
    return session;
}



//********  Dismissing the Picker  **********//
- (void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session
{
    //set session delegate and dismiss the picker
    session.delegate = self;
    self.session = session;
    picker.delegate = nil;
    [picker dismiss];
}

- (void)peerPickerControllerDidCancel:(GKPeerPickerController *)picker
{
    picker.delegate = nil;
    
}


- (void)session:(GKSession *)session
           peer:(NSString *)peerID
 didChangeState:(GKPeerConnectionState)state {
    switch (state)
    {
        case GKPeerStateConnected:
            NSLog(@"connected");
            break;
        case GKPeerStateDisconnected:
            NSLog(@"disconnected");
            session = nil;
            break;
    }
}
- (void)invalidateSession:(GKSession *)session {
	if(session != nil) {
		[session disconnectFromAllPeers];
		session.available = NO;
		[session setDataReceiveHandler: nil withContext: NULL];
		session.delegate = nil;
	}
}


- (void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID
{
#ifdef DEBUG
	NSLog(@"MatchmakingServer: connection request from peer %@", peerID);
#endif
}

- (void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error
{
#ifdef DEBUG
	NSLog(@"MatchmakingServer: connection with peer %@ failed %@", peerID, error);
#endif
}

- (void)session:(GKSession *)session didFailWithError:(NSError *)error
{
#ifdef DEBUG
	NSLog(@"MatchmakingServer: session failed %@", error);
#endif
}
- (IBAction)moreAppAction:(id)sender
{

    
    optionsView.hidden = NO;
    
    info.hidden = YES;
    homeButton.hidden = NO;
    
    _sqOutlet.enabled = YES;
    _nqOutlet.enabled = YES;
    _bgcOutlet.enabled = YES;
    _dlOutlet.enabled = YES;
    _btOutlet.enabled = YES;
    _lcOutlet.enabled = YES;
    
  
}

- (IBAction)OptionsAction:(id)sender
{
    

    
    NSLog(@"this is options action method");
}

- (IBAction)infoAction:(id)sender 
{
    
    
   
    
    InfoAppController *infoApp = [[InfoAppController alloc]initWithNibName:@"InfoAppController" bundle:nil];
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:0.80];
    
    [UIView setAnimationTransition:
     UIViewAnimationOptionTransitionNone
                           forView:self.navigationController.view cache:NO];
    
    
    [self.navigationController pushViewController:infoApp animated:YES];
    [UIView commitAnimations];

}

- (IBAction)OnOffForSoundEffects:(UIButton *)sender
{

//    [buttonForSoundEffects setImage:[UIImage imageNamed:@"check-box-button1.png"] forState:UIControlStateNormal];
//    [self.view addSubview:buttonForSoundEffects];
    
    
    
//        self.soundEffects = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"check-box-button1.png" ]];
//        [soundEffects setFrame:CGRectMake(34, 44, 29, 29)];
//        [self.view addSubview:soundEffects];
//        
//        NSLog(@"the view was visible");
//        
    
//
//    else if( l%2 == 0)
//    {
//        self.soundEffects.hidden = YES;
//        NSLog(@"the view was hidden");
//        l++;
//    }
//    

    
    
    
    
    
    
    if(soundForTicTac %2 ==0)
    {
        
       [SoundForGame play]; 
    }
 else
{
    [SoundForGame stop];
}
soundForTicTac += 1;
}

- (IBAction)OnOffForSounds:(UIButton *)sender
{
    if(soundForTicTac2 %2 ==0)
    {
        [soundForTicTacGame play];

    }
    else
    {
        [soundForTicTacGame stop];
    }
    soundForTicTac2 +=1;
}

- (IBAction)BackForHome:(UIButton *)sender
{
    optionsView.hidden = YES;
    info.hidden = NO;
   
}
- (IBAction)sqAction:(UIButton *)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://itunes.apple.com/in/app/square-puzzles/id575084619?mt=8";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
    

}

- (IBAction)nqAction:(UIButton *)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://itunes.apple.com/in/app/en-queen/id575488643?mt=8";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

- (IBAction)bgcAction:(UIButton *)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://itunes.apple.com/in/app/best-greeting-cards-lite/id528574682?mt=8";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}
- (IBAction)dlAction:(UIButton *)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://itunes.apple.com/in/app/driving-licence/id494220978?mt=8";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
    
}

- (IBAction)btAction:(UIButton *)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://itunes.apple.com/us/app/bubble-tapper-app/id461357230?mt=8";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

- (IBAction)lcAction:(UIButton *)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://itunes.apple.com/us/app/logos-caption/id539990090?mt=8";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if(!iAddForViewCntrl)
    {
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        [UIView commitAnimations];
        iAddForViewCntrl = YES;
    }
    
}
-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    
    if(iAddForViewCntrl)
    {
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        [UIView commitAnimations];
        iAddForViewCntrl = NO;
        
    }
}




@end
