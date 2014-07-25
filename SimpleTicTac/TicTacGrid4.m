//
//  TicTacGrid4.m
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/8/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "TicTacGrid4.h"

@interface TicTacGrid4 ()

@end

@implementation TicTacGrid4
@synthesize bgimgForGrid4;
@synthesize grid4ImageViewBoard;
@synthesize imgVw1;
@synthesize imgVw10;
@synthesize imgVw11;
@synthesize imgVw12;
@synthesize imgVw13;
@synthesize imgVw14;
@synthesize imgVw15;
@synthesize imgVw16;
@synthesize imgVw2;
@synthesize imgVw3;
@synthesize imgVw4;
@synthesize imgVw5;
@synthesize imgVw6;
@synthesize imgVw7;
@synthesize imgVw8;
@synthesize imgVw9;
@synthesize oImgForGrid4;
@synthesize player1NameForGri4;
@synthesize player2NameForGrid4;
@synthesize PlayerName1StringForGrid4Player;
@synthesize PlayerName2StringForGrid4Player;
@synthesize theImgForGrid4;
@synthesize turnGameForGrid4;
@synthesize xImgForGrid4;


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
    
    [self resetBoardForMatrix4];
    
    
    /*********for matrix 4*****/
    
    playerTokenForGrid4 = 1;
    numberOfPlaysForGrid4 = 0;
    self.navigationItem.title = @"Tick-Tack-4";
    


    turnGameForGrid4.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForGrid4Player];
    self.view.backgroundColor = [UIColor blackColor];
    oImgForGrid4 = [UIImage imageNamed:@"80-O.png"];
    xImgForGrid4 = [UIImage imageNamed:@"80-X.png"];
    bgimgForGrid4.image = [UIImage imageNamed:@"bg.png"];
    grid4ImageViewBoard.image  = [UIImage imageNamed:@"320-X-320.png"];
    self.player1NameForGri4.text = self.PlayerName1StringForGrid4Player;
    self.player2NameForGrid4.text = self.PlayerName2StringForGrid4Player;
    
    
    // Do any additional setup after loading the view from its nib.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

    switch (playerTokenForGrid4)
    {
        case 1:
            if(playerTokenForGrid4 == 1)
            {
                theImgForGrid4 = xImgForGrid4;
            }
            
            break;
        case 2:
            if(playerTokenForGrid4 == 2)
            {
                theImgForGrid4 = oImgForGrid4;
            }
            
            break;
    }
    
    UITouch *touch1 = [[event allTouches] anyObject];
    
    imageWasUsedForGrid4 = NO;
    
    if(CGRectContainsPoint([imgVw1 frame], [touch1 locationInView:self.view]) &&
        (imgVw1.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw1.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw2 frame], [touch1 locationInView:self.view]) &&
        (imgVw2.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw2.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw3 frame], [touch1 locationInView:self.view]) &&
        (imgVw3.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw3.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw4 frame], [touch1 locationInView:self.view]) &&
        (imgVw4.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw4.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw5 frame], [touch1 locationInView:self.view]) &&
        (imgVw5.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw5.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw6 frame], [touch1 locationInView:self.view]) &&
        (imgVw6.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw6.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw7 frame], [touch1 locationInView:self.view]) &&
                 (imgVw7.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw7.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw8 frame], [touch1 locationInView:self.view]) &&
        (imgVw8.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw8.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw9 frame], [touch1 locationInView:self.view]) &&
        (imgVw9.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw9.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw10 frame], [touch1 locationInView:self.view]) &&
        (imgVw10.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw10.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw11 frame], [touch1 locationInView:self.view]) &&
        (imgVw11.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw11.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw12 frame], [touch1 locationInView:self.view]) &&
        (imgVw12.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw12.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw13 frame], [touch1 locationInView:self.view]) &&
        (imgVw13.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw13.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw14 frame], [touch1 locationInView:self.view]) &&
        (imgVw14.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw14.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw15 frame], [touch1 locationInView:self.view]) &&
        (imgVw15.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw15.image = theImgForGrid4;
    }
    if(CGRectContainsPoint([imgVw16 frame], [touch1 locationInView:self.view]) &&
        (imgVw16.image == NULL))
    {
        imageWasUsedForGrid4 = YES;
        imgVw16.image = theImgForGrid4;
    }
    if(imageWasUsedForGrid4)
    {
        [self updatePlayerInfoForMatrix4];
    }
    
    [self processLogicForMarix4];
        
    NSLog(@"this is for matrix 4");
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) processLogicForMarix4
{
    if([self checkForWinForMatrix4])
    {
        if(playerTokenForGrid4 == 2)
        {
            UIAlertView *myAlertViewForGrid4 = [[UIAlertView alloc]
                                                initWithTitle:@"Wow Great!"
                                                message:[NSString stringWithFormat:@"Congratulations to %@", self.PlayerName1StringForGrid4Player]
                                                delegate:self
                                                cancelButtonTitle:@"Ok"
                                                otherButtonTitles:@"Rate This App",@"No Thanks",nil];
            [myAlertViewForGrid4 show];
            
        }
        else if(playerTokenForGrid4 == 1)
        {
            UIAlertView *myAlertViewForGrid4 = [[UIAlertView alloc]
                                                 initWithTitle:@"Wow Great"
                                                 message:[NSString stringWithFormat:@"Congratulations to \n%@",self.PlayerName2StringForGrid4Player]
                                                 delegate:self
                                                 cancelButtonTitle:@"Ok"
                                                 otherButtonTitles:@"Rate This App ",@"No Thanks",nil];
            [myAlertViewForGrid4 show];
            
            
        }
    }
    else
    {
        if(numberOfPlaysForGrid4 == 16 && (playerTokenForGrid4==1 || playerTokenForGrid4 ==2))
        {
            UIAlertView *myAlertViewForGrid4 = [[UIAlertView alloc]
                                             initWithTitle:@"No Winner"
                                             message:@"It's tie"
                                             delegate:self
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:@"Rate This App",@"No Thanks",nil];
            [myAlertViewForGrid4 show];
            
        }
    }
    
}
-(BOOL) checkForWinForMatrix4
{
    // HORIZONTAL WINS
    if((imgVw1.image == imgVw2.image) &
       (imgVw2.image == imgVw3.image) &
       (imgVw3.image == imgVw4.image) &
       (imgVw1.image != NULL))
    {
        return YES;
    }
    if((imgVw5.image == imgVw6.image) &
       (imgVw6.image == imgVw7.image) &
       (imgVw7.image == imgVw8.image) &
       (imgVw5.image != NULL))
    {
        return YES;
    }
    if((imgVw9.image == imgVw10.image) &
       (imgVw10.image == imgVw11.image) &
       (imgVw11.image == imgVw12.image) &
       (imgVw9.image != NULL))
    {
        return YES;
    }
    if((imgVw13.image == imgVw14.image) &
       (imgVw14.image == imgVw15.image) &
       (imgVw15.image == imgVw16.image) &
       (imgVw13.image != NULL))
    {
        return YES;
    }
    
    // VERTICAL WINS
    if((imgVw1.image == imgVw5.image) &
       (imgVw5.image == imgVw9.image) &
       (imgVw9.image == imgVw13.image) &
       (imgVw1.image != NULL))
    {
        return YES;
    }
    if((imgVw2.image == imgVw6.image) &
       (imgVw6.image == imgVw10.image) &
       (imgVw10.image == imgVw14.image) &
       (imgVw2.image != NULL))
    {
        return YES;
    }
    if((imgVw3.image == imgVw7.image) &
       (imgVw7.image == imgVw11.image) &
       (imgVw11.image == imgVw15.image) &
       (imgVw3.image != NULL))
    {
        return YES;
    }
    if((imgVw4.image == imgVw8.image) &
       (imgVw8.image == imgVw12.image) &
       (imgVw12.image == imgVw16.image) &
       (imgVw4.image != NULL))
    {
        return YES;
    }
    
    // DIAGONAL WINS
    if((imgVw1.image == imgVw6.image) &
       (imgVw6.image == imgVw11.image) &
       (imgVw11.image == imgVw16.image) &
       (imgVw1.image != NULL))
    {
        return YES;
    }
    if((imgVw4.image == imgVw7.image) &
       (imgVw7.image == imgVw10.image) &
       (imgVw10.image == imgVw13.image) &
       (imgVw4.image != NULL))
    {
        return YES;
    }
    
    
    
    
    return NO;
    
}
-(void) resetBoardForMatrix4
{
    imgVw1.image = NULL;
    imgVw2.image = NULL;
    imgVw3.image = NULL;
    imgVw4.image = NULL;
    imgVw5.image = NULL;
    imgVw6.image = NULL;
    imgVw7.image = NULL;
    imgVw8.image = NULL;
    imgVw9.image = NULL;
    imgVw10.image = NULL;
    imgVw11.image = NULL;
    imgVw12.image = NULL;
    imgVw13.image = NULL;
    imgVw14.image = NULL;
    imgVw15.image = NULL;
    imgVw16.image = NULL;
    
    playerTokenForGrid4 = 1;
    numberOfPlaysForGrid4 = 0;
    turnGameForGrid4.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForGrid4Player];
    
    
}
- (void) updatePlayerInfoForMatrix4
{
    if(playerTokenForGrid4 == 1)
    {
        playerTokenForGrid4 = 2; //because now its the second players turn
        turnGameForGrid4.text = [NSString stringWithFormat:@"%@ Go",self.PlayerName1StringForGrid4Player]; //Update the label to tell who goes next
        
    }
    else
    {
        playerTokenForGrid4 = 1;
        turnGameForGrid4.text =[NSString stringWithFormat:@"%@ Go",self.PlayerName2StringForGrid4Player];
        
    }
    numberOfPlaysForGrid4++;
    if(numberOfPlaysForGrid4 == 16)
    {
        // Game is a draw
        
    }
    
}
- (IBAction)grid4ResetAction:(UIButton *)sender
{
    [self resetBoardForMatrix4];
}
- (IBAction)grid4MenuAction:(UIButton *)sender
{
    UIActionSheet *actionSheetMenuForGrid4 = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"Cancel" otherButtonTitles:@"Home",@"Back",@"E-Mail" ,nil];
    actionSheetMenuForGrid4.actionSheetStyle  = UIActionSheetStyleBlackTranslucent;
    [actionSheetMenuForGrid4 showInView:self.view];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        [self resetBoardForMatrix4];
        
    }
    else if(buttonIndex == 1)
    {
        static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
    }
    else if(buttonIndex == 2)
    {
        [self resetBoardForMatrix4];
        NSLog(@"No operation to be performed");
    }

}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0) {
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
        [self resetBoardForMatrix4];
    }
    else if(buttonIndex == 3)
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
    [self setBgimgForGrid4:nil];
    [super viewDidUnload];
}
@end
