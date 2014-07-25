//
//  TicTacGame.m
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "TicTacGame.h"

@implementation TicTacGame

@synthesize turnForPlayersOutlet =_turnForPlayersOutlet;
@synthesize resetOutlet;
@synthesize theImg;
@synthesize bgImgForGrid3;
@synthesize boardImageView;
@synthesize gri3View;
@synthesize grid3Outlet;
@synthesize grid4Outlet;
@synthesize grid5Outlet;
@synthesize imagView1;
@synthesize imagView2;
@synthesize imagView3;
@synthesize imagView4;
@synthesize imagView5;
@synthesize imagView6;
@synthesize imagView7;
@synthesize imagView8;
@synthesize imagView9;
@synthesize menuButtonOutlet;
@synthesize oImg;
@synthesize onePlayerGameView;
@synthesize player1Game;
@synthesize player2Game;
@synthesize PlayerName1StringForOnePlayer;
@synthesize PlayerName2StringForOnePlayer;
@synthesize xImg;


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
    [ self resetBoard];
    self.view.transform = CGAffineTransformIdentity;
    oImg = [UIImage imageNamed:@"100-O.png"];
    xImg = [UIImage imageNamed:@"100-X.png"];
    
    self.navigationItem.title = @"Tick-Tack-3";
    boardImageView.image = [UIImage imageNamed:@"300-X-300.png"];
    bgImgForGrid3.image = [UIImage imageNamed:@"bg.png"];
    self.view.backgroundColor = [UIColor blackColor];
    
    
    gri3View.hidden = YES;
   
    
    playerToken = 1;
    numberOfPlays = 0;

    _turnForPlayersOutlet.text =[NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForOnePlayer];
    
    self.player1Game.text = self.PlayerName1StringForOnePlayer;
    self.player2Game.text = self.PlayerName2StringForOnePlayer;
    self.player1Game.text = self.PlayerName1StringForOnePlayer;
    self.player2Game.text = self.PlayerName2StringForOnePlayer;
    
    
    
    
    // set home button as left bar button
    
    back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setFrame:CGRectMake(5, 5, 80, 30)];
    [back setImage:[UIImage imageNamed:@"Select-Grid.png"] forState:UIControlStateNormal];
    [back setTitle:@"Back" forState:UIControlStateNormal];
    [self.view addSubview:back];
    [back setShowsTouchWhenHighlighted:YES];
    [back addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchDown];
    backBar = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.rightBarButtonItem = backBar;
    
    
    back.enabled = NO;
    back.hidden = YES;
      
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)backAction:(id)sender
{
    gri3View.hidden = YES;
    back.enabled = NO;
    back.hidden = YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [touches count];
    
    if(grid3Outlet.tag == 1)
    {
    switch(playerToken)
        {
        case 1:
            if (playerToken == 1)
            {
                theImg = xImg;
            }
            
            break;
       case 2:
            if (playerToken == 2)
            {
                 theImg = oImg;
            }
           
            break;
         }
    UITouch *touch = [[event allTouches] anyObject];
    imageWasUsed = NO;
        

    if(CGRectContainsPoint([imagView1 frame], [touch locationInView:self.view]) && (imagView1.image == NULL))
    {
        imageWasUsed = YES;
        imagView1.image = theImg;
    }
    if(CGRectContainsPoint([imagView2 frame], [touch locationInView:self.view]) && (imagView2.image == NULL))
    {
        imageWasUsed = YES;
        imagView2.image = theImg;
    }
    if(CGRectContainsPoint([imagView3 frame], [touch locationInView:self.view]) && (imagView3.image == NULL))
    {
        imageWasUsed = YES;
        imagView3.image = theImg;
    }
    if(CGRectContainsPoint([imagView4 frame], [touch locationInView:self.view]) && (imagView4.image == NULL))
    {
        imageWasUsed = YES;
        imagView4.image = theImg;
    }
    if(CGRectContainsPoint([imagView5 frame], [touch locationInView:self.view]) && (imagView5.image == NULL))
    {
        imageWasUsed = YES;
        imagView5.image = theImg;
    }
    if(CGRectContainsPoint([imagView6 frame], [touch locationInView:self.view]) && (imagView6.image == NULL))
    {
        imageWasUsed = YES;
        imagView6.image = theImg;
    }
    if(CGRectContainsPoint([imagView7 frame], [touch locationInView:self.view]) && (imagView7.image == NULL))
    {
        imageWasUsed = YES;
        imagView7.image = theImg;
    }
    if(CGRectContainsPoint([imagView8 frame], [touch locationInView:self.view]) && (imagView8.image == NULL))
    {
        imageWasUsed = YES;
        imagView8.image = theImg;
    }
    if(CGRectContainsPoint([imagView9 frame], [touch locationInView:self.view]) && (imagView9.image == NULL))
    {
        imageWasUsed = YES;
        imagView9.image = theImg;
    }
        
        
    if(imageWasUsed)
	{
        
		[self updatePlayerInfo];
	}
    
       [self processLogic];
  }
 
    
}

- (void) updatePlayerInfo
{
    //any time you have an int variable you increment it by typing ++ to the end of it
    // its the same as saying numberOfPlays = numberOfPlays + 1;
    // and it is much easier to type. You can also subtract by 1 by using --
    if(playerToken == 1)
    {
        playerToken = 2; //because now its the second players turn
        _turnForPlayersOutlet.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName2StringForOnePlayer]; //Update the label to tell who goes next
        
    }
    else
    {
       playerToken = 1;
        _turnForPlayersOutlet.text =[NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForOnePlayer];
                
    }
    numberOfPlays++;
    if(numberOfPlays == 9)
    {
        // Game is a draw
        
    }
    
}




- (void)viewDidUnload
{
    [self setPlayer1Game:nil];
    [self setPlayer2Game:nil];
    [self setTurnForPlayersOutlet:nil];
    [self setBoardImageView:nil];
    [self setImagView1:nil];
    [self setImagView2:nil];
    [self setImagView3:nil];
    [self setImagView4:nil];
    [self setImagView5:nil];
    [self setImagView6:nil];
    [self setImagView7:nil];
    [self setImagView8:nil];
    [self setImagView9:nil];
    [self setResetOutlet:nil];
    [self setOnePlayerGameView:nil];
    [self setGrid3Outlet:nil];
    [self setGrid4Outlet:nil];
    [self setGrid5Outlet:nil];
    [self setGri3View:nil];
    [self setBgImgForGrid3:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}





- (IBAction)menuButtonAction:(id)sender
{
    UIActionSheet *actionsheetForMenu = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"Cancel" otherButtonTitles:@"Home",@"Back",@"E-Mail", nil];
    actionsheetForMenu.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    [actionsheetForMenu showInView:self.view];
    
}

- (IBAction)resetAction:(UIButton *)sender
{
    [self resetBoard];
}

- (IBAction)grid3Action:(UIButton *)sender
{
    gri3View.hidden = NO;
    back.enabled = YES;
    back.hidden = NO;
    
    
    

}

- (IBAction)grid4Action:(UIButton *)sender
{
    TicTacGrid4 *ticTac = [[TicTacGrid4 alloc]initWithNibName:@"TicTacGrid4" bundle:nil];
    ticTac.PlayerName1StringForGrid4Player = self.player1Game.text;
    ticTac.PlayerName2StringForGrid4Player = self.player2Game.text;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromRight
                           forView:self.navigationController.view cache:NO];
    
    
    [self.navigationController pushViewController:ticTac animated:YES];
    [UIView commitAnimations];
}

- (IBAction)grid5Action:(UIButton *)sender
{
    TicTacGrid5 *ticTacGrid5 = [[TicTacGrid5 alloc]initWithNibName:@"TicTacGrid5" bundle:nil];
    ticTacGrid5.PlayerName1StringForGrid5Player = self.player1Game.text;
    ticTacGrid5.PlayerName2StringForGrid5Player = self.player2Game.text;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
  
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromRight
                           forView:self.navigationController.view cache:NO];
    
    
    [self.navigationController pushViewController:ticTacGrid5 animated:YES];
    [UIView commitAnimations];
}

-(void)processLogic{
    //The process Logic will check for a win, if one is present it will present
    //a UIAlert. If one is not found it will display a Draw message if all the spaces are filled.
    
    if([self checkForWin])
    {
        if(playerToken == 2)
        {
           myAlertView = [[UIAlertView alloc]
                                        initWithTitle:@"Wow Great!"
                                        message:[NSString stringWithFormat:@"Congratulations to %@", self.PlayerName1StringForOnePlayer]
                                        delegate:self
                                        cancelButtonTitle:@"Ok"
                                        otherButtonTitles:@"Rate This App",@"No Thanks",nil];
            [myAlertView show];
            
        }
        else if(playerToken == 1)
        {
           myAlertView1 = [[UIAlertView alloc]
                                         initWithTitle:@"Wow Great"
                                         message:[NSString stringWithFormat:@"Congratulations to \n%@",self.PlayerName2StringForOnePlayer]
                                         delegate:self
                                         cancelButtonTitle:@"Ok"
                                         otherButtonTitles:@"Rate This App",@"No thanks",nil];
            [myAlertView1 show];
            
            
        }
    }
    else
    {
        if(numberOfPlays == 9 && (playerToken==1 || playerToken ==2))
        {
            myAlertView = [[UIAlertView alloc]
                                        initWithTitle:@"No Winner"
                                        message:@"It's tie"
                                        delegate:self
                                        cancelButtonTitle:@"Ok"
                                        otherButtonTitles:@"rate This App",@"No Thanks",nil];
            [myAlertView show];
            
        }
    }
    

}
-(BOOL) checkForWin{
    
    
    // HORIZONTAL WINS
    if((imagView1.image == imagView2.image) &
       (imagView2.image == imagView3.image) &
       (imagView1.image != NULL))
    {
        return YES;
    }
    if((imagView4.image == imagView5.image) &
       (imagView5.image == imagView6.image) &
       (imagView4.image != NULL))
    {
        return YES;
    }
    if((imagView7.image == imagView8.image) &
       (imagView8.image == imagView9.image) &
       (imagView7.image != NULL))
    {
        return YES;
    }
    
    // VERTICAL WINS
    if((imagView1.image == imagView4.image) &
       (imagView4.image == imagView7.image) &
       (imagView1.image != NULL))
    {
        return YES;
    }
    if((imagView2.image == imagView5.image) &
       (imagView5.image == imagView8.image) &
       (imagView2.image != NULL))
    {
        return YES;
    }
    
    if((imagView3.image == imagView6.image) &
       (imagView6.image == imagView9.image) &
       (imagView3.image != NULL))
    {
        return YES;
    }
    
    // DIAGONAL WINS
    if((imagView1.image == imagView5.image) &
       (imagView5.image == imagView9.image) &
       (imagView1.image != NULL))
    {
        return YES;
    }
    if((imagView3.image == imagView5.image) &
       (imagView5.image == imagView7.image) &
       (imagView3.image != NULL))
    {
        return YES;
    }
    
    
    return NO;
}
-(void) resetBoard{
    ///clear the images stored in the UIIMageView
    
    imagView1.image = NULL;
    imagView2.image = NULL;
    imagView3.image = NULL;
    imagView4.image = NULL;
    imagView5.image = NULL;
    imagView6.image = NULL;
    imagView7.image = NULL;
    imagView8.image = NULL;
    imagView9.image = NULL;
    
    //reset the player token and update the label text
    playerToken= 1;
    numberOfPlays = 0;
    _turnForPlayersOutlet.text =[NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForOnePlayer];
    
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0) {
        NSLog(@"No action performed");
    }
    if(buttonIndex ==1)
    {
        
    [self.navigationController popToRootViewControllerAnimated:YES];
           
    }
    if(buttonIndex == 2)
    {
        TwoPlayer *twoPlayer = [[TwoPlayer alloc]initWithNibName:@"TwoPlayer" bundle:nil];
        [self.navigationController pushViewController:twoPlayer animated:YES];
        [self resetBoard];
        NSLog(@"this game was saved");
    }
    if (buttonIndex == 3)
    {
        
        if([MFMailComposeViewController canSendMail])
        {
            MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
            mailCont.mailComposeDelegate = self;
            
            [mailCont setSubject:@"Feedback"];
            NSData *myData = [[NSData alloc]initWithData:UIImagePNGRepresentation([UIImage imageNamed:@"57-X-57.png"])];
            
            
            
            [mailCont addAttachmentData:myData mimeType:@"image/png" fileName:@"me.png"];
            [mailCont setToRecipients:[NSArray arrayWithObject:@"info@eminosoft.com"]];
            [mailCont setMessageBody:@"" isHTML:NO];
         
            
            [self presentModalViewController:mailCont animated:YES];
           
        }
        
        else
        {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"E-mail not sent " message:@"please check your connection settings" delegate:self cancelButtonTitle:@" ok " otherButtonTitles:nil, nil];
            
            [alert show];
         
        }
        

        
  
      
    }
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    
    switch (result)
    
    {
        case MFMailComposeResultCancelled:
            NSLog(@"MFMailComposeResultCancelled:");
            
            break;
            
        case MFMailComposeResultSaved:
            NSLog(@"MFMailComposeResultSaved:");
            break;
            
        case MFMailComposeResultSent:
            NSLog(@"MFMailComposeResultSent:");
            break;
            
        case MFMailComposeResultFailed:
            NSLog(@"MFMailComposeResultFailed:");
            break;
            
        default:
            
            break;
            
    }
    [self dismissModalViewControllerAnimated:YES];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView == myAlertView)
    {
        if(buttonIndex ==0)
        {
            [self resetBoard];
        }
        else if(buttonIndex == 1)
        {
            static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
        }
        else if(buttonIndex == 2)
        {
            [self resetBoard];
            NSLog(@"No operation to be performed");
        }
    }
    else if(alertView == myAlertView1)
    {
        if(buttonIndex ==0)
        {
            [self resetBoard];
        }
        else if(buttonIndex == 1)
        {
            static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
        }
        else if(buttonIndex == 2)
        {
            [self resetBoard];
           NSLog(@"No operation to be performed"); 
        }
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
