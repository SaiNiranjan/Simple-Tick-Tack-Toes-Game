//
//  TicTacGrid5.m
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/8/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "TicTacGrid5.h"

@interface TicTacGrid5 ()

@end

@implementation TicTacGrid5
@synthesize bgImgForGrid5;
@synthesize grid5ImageViewBoard;
@synthesize imgView1;
@synthesize imgView10;
@synthesize imgView11;
@synthesize imgView12;
@synthesize imgView13;
@synthesize imgView14;
@synthesize imgView15;
@synthesize imgView16;
@synthesize imgView17;
@synthesize imgView18;
@synthesize imgView19;
@synthesize imgView2;
@synthesize imgView20;
@synthesize imgView21;
@synthesize imgView22;
@synthesize imgView23;
@synthesize imgView24;
@synthesize imgView25;
@synthesize imgView3;
@synthesize imgView4;
@synthesize imgView5;
@synthesize imgView6;
@synthesize imgView7;
@synthesize imgView8;
@synthesize imgView9;
@synthesize oImgForGrid5;
@synthesize player1NameForGri5;
@synthesize player2NameForGrid5;
@synthesize PlayerName1StringForGrid5Player;
@synthesize PlayerName2StringForGrid5Player;
@synthesize theImgForGrid5;
@synthesize turnGameForGrid5;
@synthesize xImgForGrid5;


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
    [self resetBoardForMatrix5];
    xImgForGrid5 = [UIImage imageNamed:@"60-X.png"];
    oImgForGrid5 = [UIImage imageNamed:@"60-O.png"];
    bgImgForGrid5.image = [UIImage imageNamed:@"bg.png"];
    grid5ImageViewBoard.image = [UIImage imageNamed:@"300-X-300-1.png"];
    self.navigationItem.title = @"Tick-Tack-5";
    
    self.view.backgroundColor = [UIColor blackColor];
    playerTokenForGrid5 = 1;
    numberOfPlaysForGrid5 = 0;
    turnGameForGrid5.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForGrid5Player];
    
    self.player1NameForGri5.text = self.PlayerName1StringForGrid5Player;
    self.player2NameForGrid5.text = self.PlayerName2StringForGrid5Player;
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    switch (playerTokenForGrid5)
    {
        case 1:
            if(playerTokenForGrid5 == 1)
            {
                theImgForGrid5 = xImgForGrid5;
            }
            
            break;
        case 2:
            if(playerTokenForGrid5 == 2)
            {
                theImgForGrid5 = oImgForGrid5;
            }
            
            break;
    }
    
    UITouch *touch2 = [[event allTouches] anyObject];
    
    imageWasUsedForGrid5 = NO;
    
    if(CGRectContainsPoint([imgView1 frame], [touch2 locationInView:self.view]) &&
        (imgView1.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView1.image = theImgForGrid5;
    }
    
    if(CGRectContainsPoint([imgView2 frame], [touch2 locationInView:self.view]) &&
        (imgView2.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView2.image = theImgForGrid5;
    }
    
    if(CGRectContainsPoint([imgView3 frame], [touch2 locationInView:self.view]) &&
        (imgView3.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView3.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView4 frame], [touch2 locationInView:self.view]) &&
        (imgView4.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView4.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView5 frame], [touch2 locationInView:self.view]) &&
        (imgView5.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView5.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView6 frame], [touch2 locationInView:self.view]) &&
        (imgView6.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView6.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView7 frame], [touch2 locationInView:self.view]) &&
        (imgView7.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView7.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView8 frame], [touch2 locationInView:self.view]) &&
        (imgView8.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView8.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView9 frame], [touch2 locationInView:self.view]) &&
        (imgView9.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView9.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView10 frame], [touch2 locationInView:self.view]) &&
        (imgView10.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView10.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView11 frame], [touch2 locationInView:self.view]) &&
        (imgView11.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView11.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView12 frame], [touch2 locationInView:self.view]) &&
        (imgView12.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView12.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView13 frame], [touch2 locationInView:self.view]) &&
        (imgView13.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView13.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView14 frame], [touch2 locationInView:self.view]) &&
        (imgView14.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView14.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView15 frame], [touch2 locationInView:self.view]) &&
        (imgView15.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView15.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView16 frame], [touch2 locationInView:self.view]) &&
        (imgView16.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView16.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView17 frame], [touch2 locationInView:self.view]) &&
        (imgView17.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView17.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView18 frame], [touch2 locationInView:self.view]) &&
        (imgView18.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView18.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView19 frame], [touch2 locationInView:self.view]) &&
        (imgView19.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView19.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView20 frame], [touch2 locationInView:self.view]) &&
        (imgView20.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView20.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView21 frame], [touch2 locationInView:self.view]) &&
        (imgView21.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView21.image = theImgForGrid5;
    }
    if(CGRectContainsPoint([imgView22 frame], [touch2 locationInView:self.view]) &&
        (imgView22.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView22.image = theImgForGrid5;
    }
    
    if(CGRectContainsPoint([imgView23 frame], [touch2 locationInView:self.view]) &&
        (imgView23.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView23.image = theImgForGrid5;
    }
    
    if(CGRectContainsPoint([imgView24 frame], [touch2 locationInView:self.view]) &&
        (imgView24.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView24.image = theImgForGrid5;
    }
    
    if(CGRectContainsPoint([imgView25 frame], [touch2 locationInView:self.view]) &&
        (imgView25.image == NULL))
    {
        imageWasUsedForGrid5 = YES;
        imgView25.image = theImgForGrid5;
    }
    
    if(imageWasUsedForGrid5)
    {
        [self updatePlayerInfoForMatrix5];
    }
    
        
    [self processLogicForMarix5];
    
    
    NSLog(@"this is for matrix 4");
}



-(void) processLogicForMarix5
{
    
    
    if([self checkForWinForMatrix5])
    {
        if(playerTokenForGrid5 == 2)
        {
            UIAlertView *myAlertViewForGrid5 = [[UIAlertView alloc]
                                                initWithTitle:@"Wow Great!"
                                                message:[NSString stringWithFormat:@"Congratulations to  %@", self.PlayerName1StringForGrid5Player]
                                                delegate:self
                                                cancelButtonTitle:@"Ok"
                                                otherButtonTitles:@"Rate This App",@"No Thanks",nil];
            [myAlertViewForGrid5 show];
            
        }
        else if(playerTokenForGrid5 == 1)
        {
            UIAlertView *myAlertView1ForGrid5 = [[UIAlertView alloc]
                                                 initWithTitle:@"Wow Great"
                                                 message:[NSString stringWithFormat:@"Congratulations to  \n%@",self.PlayerName2StringForGrid5Player]
                                                 delegate:self
                                                 cancelButtonTitle:@"Ok"
                                                 otherButtonTitles:@"Rate This App",@"No Thanks",nil];
            [myAlertView1ForGrid5 show];
            
            
        }
    }
    else
    {
        if(numberOfPlaysForGrid5 == 25 && (playerTokenForGrid5==1 || playerTokenForGrid5 ==2))
        {
            UIAlertView *myAlertViewGrid5 = [[UIAlertView alloc]
                                             initWithTitle:@"No Winner"
                                             message:@"It's tie"
                                             delegate:self
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:@"Rate This App",@"No Thanks",nil];
            [myAlertViewGrid5 show];
            
        }
    }
    
}
-(BOOL) checkForWinForMatrix5
{
    
    // HORIZONTAL WINS
    if((imgView1.image == imgView2.image) &
       (imgView2.image == imgView3.image) &
       (imgView3.image == imgView4.image) &
       (imgView4.image == imgView5.image) &
       (imgView1.image != NULL))
    {
        return YES;
    }
    if((imgView6.image == imgView7.image) &
       (imgView7.image == imgView8.image) &
       (imgView8.image == imgView9.image) &
       (imgView9.image == imgView10.image) &
       (imgView6.image != NULL))
    {
        return YES;
    }
    if((imgView11.image == imgView12.image) &
       (imgView12.image == imgView13.image) &
       (imgView13.image == imgView14.image) &
       (imgView14.image == imgView15.image) &
       (imgView11.image != NULL))
    {
        return YES;
    }
    if((imgView16.image == imgView17.image) &
       (imgView17.image == imgView18.image) &
       (imgView18.image == imgView19.image) &
       (imgView19.image == imgView20.image) &
       (imgView16.image != NULL))
    {
        return YES;
    }
    if((imgView21.image == imgView22.image) &
       (imgView22.image == imgView23.image) &
       (imgView23.image == imgView24.image) &
       (imgView24.image == imgView25.image) &
       (imgView21.image != NULL))
    {
        return YES;
    }
    
     // VERTICAL WINS
   
    if((imgView1.image == imgView6.image) &
       (imgView6.image == imgView11.image) &
       (imgView11.image == imgView16.image) &
       (imgView16.image == imgView21.image) &
       (imgView1.image != NULL))
    {
        return YES;
    }
    if((imgView2.image == imgView7.image) &
       (imgView7.image == imgView12.image) &
       (imgView12.image == imgView17.image) &
       (imgView17.image == imgView22.image) &
       (imgView2.image != NULL))
    {
        return YES;
    }
    
    if((imgView3.image == imgView8.image) &
       (imgView8.image == imgView13.image) &
       (imgView13.image == imgView18.image) &
       (imgView18.image == imgView23.image) &
       (imgView3.image != NULL))
    {
        return YES;
    }
    if((imgView4.image == imgView9.image) &
       (imgView9.image == imgView14.image) &
       (imgView14.image == imgView19.image) &
       (imgView19.image == imgView24.image) &
       (imgView4.image != NULL))
    {
        return YES;
    }
    if((imgView5.image == imgView10.image) &
       (imgView10.image == imgView15.image) &
       (imgView15.image == imgView20.image) &
       (imgView20.image == imgView25.image) &
       (imgView5.image != NULL))
    {
        return YES;
    }
    
     // DIAGONAL WINS
    
    if((imgView1.image == imgView7.image) &
       (imgView7.image == imgView13.image) &
       (imgView13.image == imgView19.image) &
       (imgView19.image == imgView25.image) &
       (imgView1.image != NULL))
    {
        return YES;
    }
    if((imgView5.image == imgView9.image) &
       (imgView9.image == imgView13.image) &
       (imgView13.image == imgView17.image) &
       (imgView17.image == imgView21.image) &
       (imgView5.image != NULL))
    {
        return YES;
    }
    
    
    return NO;
    

}
-(void) resetBoardForMatrix5
{
    imgView1.image = NULL;
    imgView2.image = NULL;
    imgView3.image = NULL;
    imgView4.image = NULL;
    imgView5.image = NULL;
    imgView6.image = NULL;
    imgView7.image = NULL;
    imgView8.image = NULL;
    imgView9.image = NULL;
    imgView10.image = NULL;
    imgView11.image = NULL;
    imgView12.image = NULL;
    imgView13.image = NULL;
    imgView14.image = NULL;
    imgView15.image = NULL;
    imgView16.image = NULL;
    imgView17.image = NULL;
    imgView18.image = NULL;
    imgView19.image = NULL;
    imgView20.image = NULL;
    imgView21.image = NULL;
    imgView22.image = NULL;
    imgView23.image = NULL;
    imgView24.image = NULL;
    imgView25.image = NULL;
    
    
    playerTokenForGrid5 = 1;
    numberOfPlaysForGrid5 = 0;
    turnGameForGrid5.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForGrid5Player];
    
    
}
- (void) updatePlayerInfoForMatrix5
{
    if(playerTokenForGrid5 ==1)
    {
        playerTokenForGrid5 = 2;
        turnGameForGrid5.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName2StringForGrid5Player];
    }
    else
    {
        playerTokenForGrid5 = 1;
        turnGameForGrid5.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForGrid5Player];
    }
    numberOfPlaysForGrid5++;
}

- (IBAction)grid5ResetAction:(UIButton *)sender
{
    [self resetBoardForMatrix5];
}

- (IBAction)grid5MenuAction:(UIButton *)sender
{
    UIActionSheet *actionSheetMenuForGrid5 = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"Cancel" otherButtonTitles:@"Home",@"Back",@"E-Mail", nil];
    [actionSheetMenuForGrid5 setActionSheetStyle:UIActionSheetStyleBlackTranslucent];
//    actionSheetMenuForGrid5 UIActionSheetStyle = UIActivityIndicatorViewStyleGray;
    [actionSheetMenuForGrid5 showInView:self.view];
    
}
-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        [self resetBoardForMatrix5];
    }
    else if(buttonIndex == 1)
    {
        static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
    }
    else if(buttonIndex == 2)
    {
        [self resetBoardForMatrix5];
        NSLog(@"No operation to be performed");
    }

}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        NSLog(@"No action to be performed");
    }
    if(buttonIndex ==1)
    {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else if(buttonIndex ==2)
    {
        TwoPlayer *twoplayer = [[TwoPlayer alloc]initWithNibName:@"TwoPlayer" bundle:nil];
        [self.navigationController pushViewController:twoplayer animated:YES];
        [self resetBoardForMatrix5];
    }
    else if(buttonIndex ==3)
        
    {
        if([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
        mailCont.mailComposeDelegate = self;
        
        [mailCont setSubject:@"Feedback"];
        [mailCont setToRecipients:[NSArray arrayWithObject:@"info@eminosoft.com"]];
        NSData *myData = [[NSData alloc]initWithData:UIImagePNGRepresentation([UIImage imageNamed:@"57-X-57.png"])];
        
        
        
        [mailCont addAttachmentData:myData mimeType:@"image/png" fileName:@"me.png"];
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



- (void)viewDidUnload {
    [self setBgImgForGrid5:nil];
    [super viewDidUnload];
}
@end
