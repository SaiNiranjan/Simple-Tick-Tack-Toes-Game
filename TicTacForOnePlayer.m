//
//  TicTacForOnePlayer.m
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/6/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import "TicTacForOnePlayer.h"
//define the constants:
#define CELL_WIDTH 100
#define CELL_HEIGHT 100
#define NUMBER_OF_ROWS 3
//
////these might be used elsewhere
#define NUMBER_OF_COLUMNS  3
#define NUMBER_OF_CELLS = NUMBER_OF_ROWS * NUMBER_OF_COLUMNS
#define BOARD_WIDTH = CELL_WIDTH * NUMBER_OF_COLUMNS

@implementation TicTacForOnePlayer
@synthesize bgImgForOnePlyr;
@synthesize gameImageView;
@synthesize image1Button;
@synthesize image2Button;
@synthesize image3Button;
@synthesize image4Button;
@synthesize image5Button;
@synthesize image6Button;
@synthesize image7Button;
@synthesize image8Button;
@synthesize image9Button;
@synthesize imageView1;
@synthesize imageView2;
@synthesize imageView3;
@synthesize imageView4;
@synthesize imageView5;
@synthesize imageView6;
@synthesize imageView7;
@synthesize imageView8;
@synthesize imageView9;
@synthesize menuButtonOutlet;
@synthesize oImage;
@synthesize player1Game;
@synthesize player2Game;
@synthesize PlayerName1StringFor1Player;
@synthesize PlayerName2StringFor1Player;
@synthesize theImage;
@synthesize turnForGame1;
@synthesize xImage;



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
    [self resetBoardForGame];
    oImage = [UIImage imageNamed:@"100-O.png"];
    xImage = [UIImage imageNamed:@"100-X.png"];
    self.navigationItem.title = @"One Player";
    bgImgForOnePlyr.image = [UIImage imageNamed:@"bg.png"];
    gameImageView.image = [UIImage imageNamed:@"300-X-300.png"];
    playerTokenForPlayers = 1;
    touchCount = 0;
    x=1;
    
    self.view.backgroundColor = [UIColor blackColor];
    
    self.player1Game.text = self.PlayerName1StringFor1Player;
    self.player2Game.text = self.PlayerName2StringFor1Player;
    
    
     turnForGame1.text =[NSString stringWithFormat:@"%@ Go",self.PlayerName1StringFor1Player];
    
    //Buttons Disabling
    
    
     image1Button.enabled = NO;
     image2Button.enabled = NO;
     image3Button.enabled = NO;
     image4Button.enabled = NO;
     image5Button.enabled = NO;
     image6Button.enabled = NO;
     image7Button.enabled = NO;
     image8Button.enabled = NO;
     image9Button.enabled = NO;
    
    
    image1Button.hidden = YES;
    image2Button.hidden = YES;
    image3Button.hidden = YES;
    image4Button.hidden = YES;
    image5Button.hidden = YES;
    image6Button.hidden = YES;
    image7Button.hidden = YES;
    image8Button.hidden = YES;
    image9Button.hidden = YES;

    
    
    
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    touch1 = [[event allTouches] anyObject];
	 touchPoint = [touch1 locationInView:self.view];
    /***********check if double tap**************/

    
	
//    CGPoint touchlocation = [touch locationinView:_gameImageView];
    
	if([self placeToken:touchPoint])
    {
		[self updatePlayerInfoForPlayers];
	}
        
    
}

- (BOOL)placeToken:(CGPoint) touch
{
	
	imageWasUsedForOnePlayer = FALSE;
	//************check to see if the point that was touched is in one of the UIImage views it display an image***************************//
    
    if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && (imageView1.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView1.image = xImage;
       
    }
    if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && (imageView2.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView2.image = xImage;
        
    }
    if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && (imageView3.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView3.image = xImage;
        
    }
    if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && (imageView4.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView4.image = xImage;
      
    }
    if(CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view]) && (imageView5.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView5.image = xImage;
       
    }
    if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && (imageView6.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView6.image = xImage;
       
    }
    if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && (imageView7.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView7.image = xImage;
        
    }
    if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && (imageView8.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView8.image = xImage;
        
    }
    if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && (imageView9.image == NULL))
    {
        imageWasUsedForOnePlayer = YES;
        imageView9.image = xImage;
        
    }
    
    //TRAIL FINAL//
    if(imageView1.image != NULL)
    {
        image1Button.enabled = YES;
        image1Button.hidden = NO;
        
    }
    else if(imageView2.image != NULL)
    {
        image2Button.enabled = YES;
        image2Button.hidden = NO;
    }
    else if(imageView3.image != NULL)
    {
        image3Button.enabled = YES;
        image3Button.hidden = NO;
    }
    else if(imageView4.image != NULL)
    {
        image4Button.enabled = YES;
        image4Button.hidden = NO;
    }
    else if(imageView5.image != NULL)
    {
        image5Button.enabled = YES;
        image5Button.hidden = NO;
    }
    else if(imageView6.image != NULL)
    {
        image6Button.enabled = YES;
        image6Button.hidden = NO;
    }
    else if(imageView7.image != NULL)
    {
        image7Button.enabled = YES;
        image7Button.hidden = NO;
    }
    else if(imageView8.image != NULL)
    {
        image8Button.enabled = YES;
        image8Button.hidden = NO;
    }
    else
    {
        image9Button.enabled = YES;
        image9Button.hidden = NO;
    }
//
//
   
    if ( imageView5.image != NULL && imageView5.image == xImage)
    {
        [self computerAsOpponent];
        
    }
    else
    {
    [self computerPlayWithUser];
    }
    
  
    
    touchCount += 1;
    
    
    NSLog(@"Touch count is %d",touchCount);
    [self processLogicForGame];
//   [self gameEnd];
    
    
        
        //    if (wasTokenPlaced == TRUE) {
    [self updatePlayerInfoForPlayers];
    return TRUE; //we were able to place the token in question
  
    

    
}
//- (void) playOpponentMove{
//	//just random square choosing. Will only work on a 3x3 grid
//	int x = 1 + arc4random() % 3;
//	x = x*100;
//	int y = 1 + arc4random() % 3;
//	y = y*100;
//    NSLog(@"the x and y values are %d and %d ",x,y);
//	
//	
//	[self placeToken:CGPointMake(x, y)];
//    
//    
//}



- (IBAction)image1Action:(UIButton *)sender {
}

- (IBAction)image2Action:(UIButton *)sender {
}

- (IBAction)image3Action:(UIButton *)sender {
}

- (IBAction)image4Action:(UIButton *)sender {
}

- (IBAction)image5Action:(UIButton *)sender {
}

- (IBAction)image6Action:(UIButton *)sender {
}

- (IBAction)image7Action:(UIButton *)sender {
}

- (IBAction)image8Action:(UIButton *)sender {
}

- (IBAction)image9Action:(UIButton *)sender {
}

- (IBAction)resetAction1:(id)sender
{
    [self resetBoardForGame];
}

- (IBAction)menuButtonAction:(id)sender
{
    
    UIActionSheet *actionsheetForMenu = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"Cancel" otherButtonTitles:@"Home",@"Back",@"E-Mail", nil];
    actionsheetForMenu.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    [actionsheetForMenu showInView:self.view];

    
    
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        NSLog(@"No Action To be performed");
    }
    if(buttonIndex ==1)
    {
        
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }
    if(buttonIndex == 2)
    {
        OnePlayer *onePlayer = [[OnePlayer alloc]initWithNibName:@"OnePlayer" bundle:nil];
        [self.navigationController pushViewController:onePlayer animated:YES];
        [self resetBoardForGame];
        NSLog(@"this game was saved");
    }
    if(buttonIndex == 3)
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


//-(void)gameEnd
//{
//    if (touchCount >= 5) {
//        UIAlertView *alertForWin = [[UIAlertView alloc]initWithTitle:@"No Winner" message:@"Game Tie" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//        [alertForWin show];
//    }
//    
//}

//|| |||| ||
-(void) processLogicForGame
{
    
    
    
    
    //***********FOR COMPUTER WINS//
    
    // HORIZONTAL WINS
    if((imageView1.image == imageView2.image) &
       (imageView2.image == imageView3.image) &
       (imageView1.image != NULL) && imageView1.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];
    }
    else if((imageView4.image == imageView5.image) &
       (imageView5.image == imageView6.image) &
       (imageView4.image != NULL) && imageView4.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];
    }
    else if((imageView7.image == imageView8.image) &
       (imageView8.image == imageView9.image) &
       (imageView7.image != NULL) && imageView7.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];

    }
    
    // VERTICAL WINS
    else if((imageView1.image == imageView4.image) &
       (imageView4.image == imageView7.image) &
       (imageView1.image != NULL) && imageView1.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];

    }
    else if((imageView2.image == imageView5.image) &
       (imageView5.image == imageView8.image) &
       (imageView2.image != NULL) && imageView2.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];

    }
    
    else if((imageView3.image == imageView6.image) &
       (imageView6.image == imageView9.image) &
       (imageView3.image != NULL) && imageView3.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];

    }
    
    // DIAGONAL WINS
    else if((imageView1.image == imageView5.image) &
       (imageView5.image == imageView9.image) &
       (imageView1.image != NULL) && imageView1.image == oImage )
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];

    }
    else if((imageView3.image == imageView5.image) &
       (imageView5.image == imageView7.image) &
       (imageView3.image != NULL) && imageView3.image == oImage)
    {
        myAlertView1 = [[UIAlertView alloc] initWithTitle:@"Winner!" message:[NSString stringWithFormat:@"Congratulations to %@", self.player2Game.text] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView1 show];

    }
    
    //***********FOR USER WINS//
    // HORIZONTAL WINS
    else if((imageView1.image == imageView2.image) &
       (imageView2.image == imageView3.image) &
       (imageView1.image != NULL) && imageView1.image == xImage)
    {
        
                  myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
                   [myAlertView show];
    }
    else if((imageView4.image == imageView5.image) &
       (imageView5.image == imageView6.image) &
       (imageView4.image != NULL) && imageView4.image == xImage)
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView show];

    }
    else if((imageView7.image == imageView8.image) &
       (imageView8.image == imageView9.image) &
       (imageView7.image != NULL) && imageView7.image == xImage)
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView show];

    }
    
    // VERTICAL WINS
    else if((imageView1.image == imageView4.image) &
       (imageView4.image == imageView7.image) &
       (imageView1.image != NULL) && imageView1.image == xImage)
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"rate This App",@"No Thanks",nil];
        [myAlertView show];
    }
    else if((imageView2.image == imageView5.image) &
       (imageView5.image == imageView8.image) &
       (imageView2.image != NULL) && imageView2.image == xImage)
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView show];

    }
    
    else if((imageView3.image == imageView6.image) &
       (imageView6.image == imageView9.image) &
       (imageView3.image != NULL) && imageView3.image == xImage)
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView show];
    }
    
    // DIAGONAL WINS
    else if((imageView1.image == imageView5.image) &
       (imageView5.image == imageView9.image) &
       (imageView1.image != NULL) && imageView1.image == xImage )
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView show];

    }
    else if((imageView3.image == imageView5.image) &
       (imageView5.image == imageView7.image) &
       (imageView3.image != NULL) && imageView3.image == xImage)
    {
        myAlertView = [[UIAlertView alloc] initWithTitle:@" Winner" message:[NSString stringWithFormat:@"Congratulations to %@", self.player1Game.text] delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:@"Rate This App",@"No Thanks",nil];
        [myAlertView show];
    }
    else
    {
        
        if(touchCount >= 5 && imageView1.image != NULL &&
            (imageView2.image != NULL && imageView3.image != NULL) &&
            (imageView4.image != NULL && imageView5.image != NULL) &&
            (imageView6.image != NULL && imageView7.image != NULL) &&
            (imageView8.image != NULL && imageView9.image != NULL))
        {
            alertForWin = [[UIAlertView alloc]initWithTitle:@"No Winner" message:@"Game Tie" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Rate This App",@"No Thanks", nil];
            [alertForWin show];
        }
    }
    
    

    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView == myAlertView)
    {
        if(buttonIndex == 0)
        {
            [self resetBoardForGame];
            NSLog(@"this is index 0");
        }
        
        else if(buttonIndex == 1)
        {
             NSLog(@"For clarity");
           static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
           
            
           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
        }
        else if(buttonIndex == 2)
        {
            [self resetBoardForGame];
            NSLog(@"No operation to be performed");
        }
    

    }
    else if(alertView == myAlertView1)
    {
        if(buttonIndex == 0)
        {
           
            [self resetBoardForGame];
        }
        else if(buttonIndex == 1)
        {
            NSLog(@"This is for clarity");
            static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
        }
        else if(buttonIndex == 2)
        {
            [self resetBoardForGame];
            NSLog(@"No operation to be performed");
        }

    }
    else if(alertView == alertForWin)
    {
        if(buttonIndex == 0) {
            [self resetBoardForGame];
        }
        else if(buttonIndex == 1)
        {
            NSLog(@"this is for clarity");
            static NSString *const iOSAppStoreURLFormat=@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%u";
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:iOSAppStoreURLFormat, (unsigned int)582893233]]];
        }
        else if(buttonIndex == 2)
        {
            [self resetBoardForGame];
            NSLog(@"No operation to be performed");
        }

    }
    
}
-(void)computerPlayWithUser
{

    imageWasUsedForOnePlayer = NO;
    /*************place computer in center***********/
    if(touchCount == 0)
    {
    if(imageView1.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
    else if(imageView2.image != NULL && imageView5.image == NULL)
     {
    imageView5.image =oImage;
     }
    else if(imageView3.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
    else if(imageView4.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
   
    else if(imageView6.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
    else if(imageView7.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
    else if(imageView8.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
    else if(imageView9.image != NULL && imageView5.image == NULL)
    {
        imageView5.image =oImage;
    }
}
    
    /*********Trail********/

    
    
    /*********Trail Version1********/
    if (touchCount ==1)
    {
        
        /**************When we click opposite corners ( 2(a) condition which was wrote in my notebook )*************/
        
        if((CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]))&& (imageView5.image != NULL) &&
                (imageView4.image == NULL && imageView7!= NULL) &&
            (imageView1.image == imageView7.image ||imageView7.image == imageView3.image ) &&
            imageView3.image != imageView9.image &&
            imageView2.image != imageView3.image &&
            imageView3.image != imageView6.image)
            {
            
            imageView4.image = oImage;
                
            }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) &&
                (imageView5.image != NULL) &&
                (imageView8.image == NULL && imageView7!= NULL) &&
                 imageView9.image == imageView7.image &&
                 imageView9.image == imageView7.image)
        {
            imageView8.image = oImage;
        }
        
        
        if((CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]))&& (imageView5.image != NULL) &&
            (imageView6.image == NULL && imageView9!= NULL) &&
            (imageView1.image == imageView9.image || imageView9.image == imageView3.image) &&
            imageView7.image != imageView1.image &&
            imageView7.image != imageView3.image)
        {
            
            imageView6.image = oImage;
        }
        else if((CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) &&
                  (imageView5.image != NULL && imageView7.image == NULL) &&
                  (imageView1.image == imageView9.image && imageView9.image != NULL)))
                 {
                     imageView7.image = oImage;
                 }
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) &&
                 (imageView5.image != NULL) &&
                 (imageView8.image == NULL && imageView9!= NULL) &&
                 imageView7.image == imageView9.image)
        {
            imageView8.image = oImage;
        }
        
        
        if((CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]))&& (imageView5.image != NULL) &&
            (imageView6.image == NULL && imageView3!= NULL) &&
            (imageView7.image == imageView3.image || imageView9.image == imageView3.image) &&
           ( imageView1.image != imageView7.image && imageView9.image != imageView1.image))
        {
            
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) &&
                 (imageView5.image != NULL && imageView6.image ==NULL) &&
                 (imageView3.image == imageView7.image && imageView3.image != NULL))
                 {
                     imageView6.image = oImage;
                 }
        else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) &&
                 (imageView5.image != NULL) &&
                 (imageView2.image == NULL && imageView3!= NULL) &&
                 imageView1.image != imageView7.image &&
                 imageView1.image != imageView9.image &&
                 imageView4.image != imageView1.image &&
                 imageView6.image != imageView1.image &&
                 imageView1.image != imageView8.image)
        {
            imageView2.image = oImage;
        }
        
        
        if((CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]))&& (imageView5.image != NULL) &&
            (imageView4.image == NULL && imageView1!= NULL) &&
            (imageView7.image == imageView1.image || imageView9.image == imageView1.image) &&
            imageView3.image != imageView9.image &&
            imageView9.image != imageView2.image &&
            imageView6.image != imageView9.image &&
            imageView8.image != imageView9.image)
        {
            
            imageView4.image = oImage;
        }
        else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) &&
                 (imageView5.image != NULL) &&
                 (imageView2.image == NULL && imageView1!= NULL)&&
                 imageView1.image == imageView3.image)
        {
            imageView2.image = oImage;
        }
        
        
/**************When we click opposite corners ( 2(b) condition which was wrote in my notebook )*************/
        
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view])))
        {
            if((imageView1.image != NULL && imageView2.image != NULL) && (imageView1.image == imageView2.image) &&imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if((imageView1.image != NULL && imageView3.image != NULL) && (imageView1.image == imageView3.image) && imageView2.image == NULL)
            {
                imageView2.image = oImage;
            }
            else if((imageView2.image != NULL && imageView3.image != NULL) && (imageView2.image == imageView3.image) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
        }
        
        
        
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view])))
        {
            if((imageView4.image != NULL && imageView5.image != NULL) && (imageView4.image == imageView5.image) &&imageView6.image == NULL)
            {
                imageView6.image = oImage;
            }
            else if((imageView5.image != NULL && imageView6.image != NULL) && (imageView5.image == imageView6.image) &&imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            else if((imageView4.image != NULL && imageView6.image != NULL) && (imageView4.image == imageView6.image) &&imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
        }
        
        if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView7.image != NULL && imageView8.image != NULL) && (imageView7.image == imageView8.image) &&imageView9.image == NULL)
            {
                imageView9.image = oImage;
            }
            else if((imageView8.image != NULL && imageView9.image != NULL) && (imageView8.image == imageView9.image) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if((imageView9.image != NULL && imageView7.image != NULL) && (imageView9.image == imageView7.image) &&imageView8.image == NULL)
            {
                imageView8.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView1.image != NULL && imageView4.image != NULL) && (imageView1.image == imageView4.image) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if((imageView4.image != NULL && imageView7.image != NULL) && (imageView4.image == imageView7.image) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if((imageView1.image != NULL && imageView7.image != NULL) && (imageView1.image == imageView7.image) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView2.image != NULL && imageView5.image != NULL) && (imageView2.image == imageView5.image) && imageView8.image == NULL)
            {
                imageView8.image = oImage;
            }
            else if((imageView2.image != NULL && imageView8.image != NULL) && (imageView2.image == imageView8.image) && imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
            else if((imageView5.image != NULL && imageView8.image != NULL) && (imageView5.image == imageView8.image) && imageView2.image == NULL)
            {
                imageView2.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]))||
            (CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView3.image != NULL && imageView6.image != NULL) && (imageView3.image == imageView6.image) && imageView9.image == NULL)
            {
                imageView9.image = oImage;
            }
            else if((imageView3.image != NULL && imageView9.image != NULL) && (imageView3.image == imageView9.image) && imageView6.image == NULL && imageView1.image != imageView9.image)
            {
                imageView6.image = oImage;
            }
            else if((imageView6.image != NULL && imageView9.image != NULL) && (imageView6.image == imageView9.image) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) || (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView1.image != NULL && imageView5.image != NULL) && (imageView1.image == imageView5.image) && imageView9.image == NULL)
            {
                imageView9.image = oImage;
            }
            else if((imageView5.image != NULL && imageView9.image != NULL) && (imageView5.image == imageView9.image) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if((imageView1.image != NULL && imageView9.image != NULL) && (imageView1.image == imageView9.image) && imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
        }
        
        if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView3.image != NULL && imageView5.image != NULL) && (imageView3.image == imageView5.image)&& imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
            else if((imageView3.image != NULL && imageView7.image != NULL) && (imageView3.image == imageView7.image) && imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
            else if((imageView5.image != NULL && imageView7.image != NULL) && (imageView5.image == imageView7.image) && (imageView3.image == NULL && imageView4.image == NULL))
            {
                imageView3.image = oImage;
            }
        }
        

     /**************When we click opposite corners ( 2(c) condition which was wrote in my notebook )*************/   
        
        if(((CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view])))&& (imageView5.image != NULL) &&
            (imageView7.image == NULL && imageView1!= NULL) &&
            imageView1.image == imageView4.image &&
            imageView6.image != imageView3.image &&
            imageView3.image != imageView8.image &&
            imageView9.image != imageView6.image &&
            imageView6.image != imageView8.image)
        {
            
            imageView7.image = oImage;
            
        }
       else if(((CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])||      CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])))&& (imageView5.image != NULL) &&
        (imageView3.image == NULL && imageView1!= NULL) &&
                imageView1.image != imageView8.image &&
                imageView7.image != imageView8.image &&
                imageView9.image != imageView8.image &&
                imageView2.image != imageView8.image &&
                imageView4.image != imageView8.image &&
                imageView6.image != imageView8.image)
        {
            
            imageView3.image = oImage;
            
        }
       else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])&& (imageView5.image != NULL) &&
                (imageView7.image == NULL && imageView1!= NULL) &&
                imageView1.image == imageView8.image)
       {
           
           imageView7.image = oImage;
           
       }
        
        
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image != NULL) &&
                (imageView9.image == NULL && imageView3!= NULL) &&
                imageView3.image == imageView4.image &&
                imageView2.image != imageView6.image)
            {
                imageView9.image = oImage;
            }
          
        }
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image != NULL && imageView9.image == NULL) &&
                (imageView3.image == imageView4.image && imageView3.image != NULL))
            {
                imageView9.image = oImage;
            }
        }
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])||      CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]))
        {
            if ((imageView5.image != NULL) &&
                (imageView1.image == NULL && imageView3!= NULL) &&
                imageView7.image != imageView8.image &&
                imageView9.image != imageView8.image &&
                imageView8.image != imageView2.image &&
                imageView4.image != imageView8.image &&
                imageView6.image != imageView8.image)
            {
                  imageView1.image = oImage;
            }
            
            
        }
        
        
        
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image != NULL) &&
                (imageView1.image == NULL && imageView7!= NULL) &&
                imageView3.image != imageView4.image &&
                imageView3.image != imageView6.image &&
                imageView9.image != imageView6.image &&
                imageView4.image != imageView6.image)
            {
                 imageView1.image = oImage;
            }
        
            
        }
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])||      CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) 
        {
            if((imageView5.image != NULL) &&
                (imageView9.image == NULL && imageView7!= NULL) &&
                imageView2.image != imageView1.image &&
                imageView1.image != imageView8.image &&
                imageView2.image != imageView3.image &&
                imageView3.image != imageView6.image &&
                imageView3.image != imageView8.image)
            {
                 imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]))
            {
                if ((imageView5.image != NULL && imageView7.image!= NULL)&&
                    imageView9.image == NULL &&
                    imageView7.image == imageView2.image)
                {
                    imageView9.image = oImage;
                }
            }
            
        }
        

        
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])|| CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]))         {
            if((imageView5.image != NULL) &&
                (imageView3.image == NULL && imageView9!= NULL) &&
                imageView9.image == imageView4.image &&
                imageView2.image != imageView6.image)
            {
                     imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]))
            {
                if((imageView5.image != NULL && imageView3.image == NULL) &&
                    (imageView9.image == imageView4.image && imageView9.image != NULL))
                {
                    imageView3.image = oImage;
                }
            }
       
            
            }
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])||      CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image != NULL) &&
                (imageView7.image == NULL && imageView9!= NULL) &&
                imageView1.image != imageView2.image &&
                imageView2.image != imageView3.image && imageView3.image != imageView8.image && imageView8.image != imageView4.image)
            {
                 imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]))
                     {
                         if((imageView5.image != NULL && imageView7.image == NULL) &&
                             (imageView9.image == imageView2.image && imageView9.image != NULL)) {
                             imageView7.image = oImage;
                         }
                     }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]))
            {
                if ((imageView5.image != NULL && imageView7.image == NULL) &&
                    (imageView9.image != NULL && imageView9.image == imageView2.image) &&
                    imageView4.image != imageView8.image)
                {
                    imageView7.image = oImage;
                }
            }
            
        
            
        }

      
        
    /**************When we click opposite corners ( 2(d) condition which was wrote in my notebook )*************/
        
        
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])))
        {
            if((imageView7.image == NULL && imageView2.image != NULL)&&
                imageView5.image != NULL)
                {
                imageView7.image = oImage;
                }
            
         }
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && (imageView3.image == NULL  && imageView2.image != NULL) &&
            imageView5.image != NULL &&
            imageView7.image != imageView1.image &&
            imageView9.image != imageView1.image &&
            imageView1.image != imageView4.image &&
            imageView6.image != imageView1.image)
          {
              imageView3.image = oImage;
          }
        
        else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) &&
                 (imageView1.image == NULL  && imageView2.image != NULL) &&
                 imageView5.image != NULL)
        {
             imageView1.image = oImage;
        }
        else if((CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) ||
                 CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) &&
                 (imageView3.image == NULL  && imageView2.image != NULL) &&
                   imageView5.image != NULL &&
                 (imageView7.image == imageView2.image || imageView9.image == imageView2.image))
                 
        {
            imageView3.image = oImage;
        }
        
    
    
        
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])))
        {
            if((imageView9.image == NULL && imageView4.image != NULL)&&
                (imageView5.image != NULL && imageView1.image != imageView2.image ))
            {
                imageView9.image = oImage;
            }
             else if((imageView9.image == NULL && imageView4.image != NULL)&&
                (imageView5.image != NULL && imageView4.image == imageView8.image ))
            {
                imageView9.image = oImage;
            }
            else if((imageView5.image != NULL && imageView9.image ==NULL) &&
                     imageView4.image == imageView6.image && imageView4.image != NULL)
            {
                imageView9.image = oImage;
            }

            
        }
        
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && (imageView7.image == NULL  && imageView4.image != NULL) &&
            imageView5.image != NULL &&
            imageView9.image != imageView1.image)
        {
            imageView7.image = oImage;
        }
        
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) &&
                 (imageView1.image == NULL  && imageView4.image != NULL) &&
                 imageView5.image != NULL &&
                 imageView7.image == imageView4.image)
        {
            imageView1.image = oImage;
        }
        else if((CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
                  CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) &&
                 (imageView6.image == NULL  && imageView4.image != NULL) &&
                 imageView5.image != NULL &&(imageView3.image == imageView4.image ||imageView4.image == imageView9.image) && imageView9.image != imageView1.image)
            
        {
            if(imageView2.image != imageView9.image)
            {
                 imageView6.image = oImage;
            }
           
           
        }
    
    
    else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]))
    {
        if((imageView5.image != NULL &&imageView4.image!= NULL)&&
            imageView4.image == imageView3.image && imageView6.image == NULL)
        {
            imageView6.image= oImage;
        }
    }
    
    
    
    
    
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])))
        {
            if((imageView7.image == NULL && imageView6.image != NULL)&&
                imageView5.image != NULL)
            {
                imageView7.image = oImage;
            }
            
        }
        if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && (imageView9.image == NULL  && imageView6.image != NULL) &&
            imageView5.image != NULL && imageView6.image == imageView3.image)
        {
            imageView9.image = oImage;
        }
        
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) &&
                 (imageView3.image == NULL  && imageView6.image != NULL) &&
                 imageView5.image != NULL &&
                 imageView6.image == imageView9.image)
        {
            imageView3.image = oImage;
        }
        else if((CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
                  CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view])) &&
                 ((imageView7.image == NULL)  && (imageView6.image != NULL)) &&
                 imageView5.image != NULL && ((imageView3.image != imageView6.image || imageView6.image == imageView1.image) && (imageView3.image != imageView4.image) && imageView9.image == NULL)
                 )
            
        {
            imageView7.image = oImage;
        }
        if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image != NULL && imageView9.image == NULL) &&
                (imageView6.image == imageView7.image) && imageView6.image != NULL)
            {
                imageView9.image = oImage;
            }
        }
        else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image != NULL && imageView7.image == NULL) &&
                (imageView1.image == imageView6.image) && imageView6.image != NULL)
            {
                imageView7.image = oImage;
            }
        }
        
        /********2,4,6***********/
        
        
        
         if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]))
         {
             if((imageView5.image != NULL && imageView4.image == NULL) &&
                  (imageView1.image == imageView8.image) && imageView8.image != NULL)
             {
                 imageView4.image = oImage;
             }
         }
        else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]))
        {
            if ((imageView5.image != NULL && imageView9.image == NULL) &&
                 (imageView4.image == imageView8.image) && imageView8.image != NULL)
            {
                imageView9.image = oImage;
            }
        }
  

}

    /**************Trail2*************/

/**************Block the user winnig Chance By Computer means 1,2>>>>> place the "o" by Computer *************/


    if(touchCount >=2)
    {
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view])))
          {
            if((imageView1.image != NULL && imageView2.image != NULL) && (imageView1.image == imageView2.image) &&imageView3.image == NULL &&
                imageView4.image != imageView2.image &&
                imageView7.image != imageView1.image)
            {
                imageView3.image = oImage;
            }
            else if((imageView1.image != NULL && imageView3.image != NULL) && (imageView1.image == imageView3.image) && imageView2.image == NULL && imageView3.image != imageView4.image &&
                imageView3.image != imageView7.image&&
                     imageView4.image != imageView9.image)
            {
                imageView2.image = oImage;
            }
            else if((imageView2.image != NULL && imageView3.image != NULL) && (imageView2.image == imageView3.image) && imageView1.image == NULL &&
                     imageView2.image != imageView6.image && imageView9.image != imageView2.image)
            {
                imageView1.image = oImage;
            }
         }
        

        
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) ||
           (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
           (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view])))
        {
            if((imageView4.image != NULL && imageView5.image != NULL) && (imageView4.image == imageView5.image) &&imageView6.image == NULL)
            {
                imageView6.image = oImage;
            }
            else if((imageView5.image != NULL && imageView6.image != NULL) && (imageView5.image == imageView6.image) &&imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            else if((imageView4.image != NULL && imageView6.image != NULL) && (imageView4.image == imageView6.image) &&imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
        }

        if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView7.image != NULL && imageView8.image != NULL) && (imageView7.image == imageView8.image) &&imageView9.image == NULL && (imageView1.image != imageView1.image))
            {
                imageView9.image = oImage;
            }
            else if((imageView8.image != NULL && imageView9.image != NULL) && (imageView8.image == imageView9.image) && imageView7.image == NULL &&
                     imageView3.image != imageView8.image)
            {
                imageView7.image = oImage;
            }
            else if((imageView9.image != NULL && imageView7.image != NULL) && (imageView9.image == imageView7.image) &&imageView8.image == NULL &&
                     imageView7.image != imageView3.image)
            {
                imageView8.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView1.image != NULL && imageView4.image != NULL) && (imageView1.image == imageView4.image) && imageView7.image == NULL && imageView4.image != imageView6.image)
            {
                imageView7.image = oImage;
            }
            else if((imageView4.image != NULL && imageView7.image != NULL) && (imageView4.image == imageView7.image) && imageView1.image == NULL &&
                     imageView4.image != imageView9.image)
            {
                imageView1.image = oImage;
            }
            else if((imageView1.image != NULL && imageView7.image != NULL) && (imageView1.image == imageView7.image) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView2.image != NULL && imageView5.image != NULL) && (imageView2.image == imageView5.image) && imageView8.image == NULL)
            {
                imageView8.image = oImage;
            }
            else if((imageView2.image != NULL && imageView8.image != NULL) && (imageView2.image == imageView8.image) && imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
            else if((imageView5.image != NULL && imageView8.image != NULL) && (imageView5.image == imageView8.image) && imageView2.image == NULL)
            {
                imageView2.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]))||
            (CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView3.image != NULL && imageView6.image != NULL) && (imageView3.image == imageView6.image) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if((imageView3.image != NULL && imageView9.image != NULL) && (imageView3.image == imageView9.image) && (imageView6.image == NULL &&imageView1.image != imageView9.image ))
            {
                imageView6.image = oImage;
            }
            else if((imageView6.image != NULL && imageView9.image != NULL) && (imageView6.image == imageView9.image) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
        }
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) || (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView1.image != NULL && imageView5.image != NULL) && (imageView1.image == imageView5.image) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if((imageView5.image != NULL && imageView9.image != NULL) && (imageView5.image == imageView9.image) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if((imageView1.image != NULL && imageView9.image != NULL) && (imageView1.image == imageView9.image) && imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
        }
        
        if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
            (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
            (CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])) )
        {
            if((imageView3.image != NULL && imageView5.image != NULL) && (imageView3.image == imageView5.image)&& imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
            else if((imageView3.image != NULL && imageView7.image != NULL) && (imageView3.image == imageView7.image) && imageView5.image == NULL)
            {
                imageView5.image = oImage;
            }
            else if((imageView5.image != NULL && imageView7.image != NULL) && (imageView5.image == imageView7.image) && (imageView3.image == NULL && imageView4.image == NULL))
            {
                imageView3.image = oImage;
            }
        }
        
        
  
    /************if two are match***********/
    
      /**********computer Blocks user win**************/

   
    
    }
     NSLog(@"Hey Today is Diwali. I wish u a Happy Diwali To All.......... %d",touchCount);
    
    
    
    
  /*************Trail 1 if Touchcount is 2.....************/
    
    
    
    if(touchCount == 2)
    {
     //******For 1//
        if((imageView1.image == imageView2.image && imageView1.image == xImage) &&
            (imageView3.image == imageView5.image && imageView3.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
        }
        
        
        if((imageView1.image == imageView3.image && imageView1.image == xImage) &&
            (imageView2.image == imageView5.image && imageView2.image == oImage))
        {
            if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }

            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL )
            {
                imageView8.image = oImage;
            }
        }
        
        
        
        if((imageView1.image == imageView4.image && imageView1.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL )
            {
                imageView2.image = oImage;
            }


        }
        
        if((imageView1.image == imageView6.image && imageView1.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
        
        }
        
        
        if((imageView1.image == imageView7.image && imageView1.image == xImage) &&
            (imageView4.image == imageView5.image && imageView4.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
            {
                imageView8.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
            {
                imageView6.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
            {
                imageView6.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
            {
                imageView6.image = oImage;
            }

           
        }
        
        
        if((imageView1.image == imageView8.image && imageView1.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL )
            {
                imageView2.image = oImage;
            }
        }
        
        //*****For 2//
        if((imageView2.image == imageView3.image && imageView2.image == xImage) &&
            (imageView1.image == imageView5.image && imageView1.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL)
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
        }
        
        
        if((imageView2.image == imageView4.image && imageView2.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && (imageView3.image == NULL && imageView9.image == NULL ))
            {
                imageView3.image = oImage;
            }
        }
        
        if((imageView2.image == imageView6.image && imageView2.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
           
        }
        
        
        if((imageView2.image == imageView7.image && imageView2.image == xImage) &&
            (imageView3.image == imageView5.image && imageView3.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL 
              )
            {
                imageView9.image = oImage;
            }
            if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL
                )
            {
                imageView1.image = oImage;
            }
           
        }
        


        if((imageView2.image == imageView8.image && imageView2.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
        }
  
       
        if((imageView2.image == imageView9.image && imageView2.image == xImage) &&
            (imageView3.image == imageView5.image && imageView3.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
        }
        
        
      //**********For 3//
        
        if((imageView3.image == imageView4.image && imageView3.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
           
        }
        
        
        
        if((imageView3.image == imageView6.image && imageView3.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }

        }
        
        
        
        if((imageView3.image == imageView7.image && imageView3.image == xImage) &&
            (imageView5.image == imageView6.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            
        
        }
        
        
        
        if((imageView3.image == imageView8.image && imageView3.image == xImage) &&
            (imageView1.image == imageView5.image && imageView1.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL && imageView8.image != imageView2.image)
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }

            
           
        }

        if((imageView3.image == imageView9.image && imageView3.image == xImage) &&
            (imageView5.image == imageView6.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
            {
                imageView2.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }

            
        }

        
     //**********For 4//
        
        if((imageView4.image == imageView1.image && imageView4.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
        }
        
        
        if((imageView4.image == imageView2.image && imageView4.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            
        }

   
        if((imageView4.image == imageView3.image && imageView4.image == xImage) &&
            (imageView5.image == imageView6.image && imageView6.image == oImage))
        {
            if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
           
        }
        
        if((imageView4.image == imageView6.image && imageView4.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL  && imageView6.image != imageView6.image )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL && imageView7.image == NULL)
            {
                imageView1.image = oImage;
            }

        }
        
        
        
        if((imageView4.image == imageView7.image && imageView4.image == xImage) &&
            (imageView1.image == imageView5.image && imageView1.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL)
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL )
            {
                imageView9.image = oImage;
            }
        }
        
        if((imageView4.image == imageView8.image && imageView8.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
        }
        
        if((imageView4.image == imageView9.image && imageView4.image == xImage) &&
            (imageView5.image == imageView6.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL )
            {
                imageView2.image = oImage;
            }
        }

        //*********For 6//
        
        if((imageView6.image == imageView1.image && imageView6.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL && imageView7.image != imageView9.image)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL &&
                     imageView7.image != imageView9.image)
            {
                imageView3.image = oImage;
            }
            
        }
        
        if((imageView6.image == imageView4.image && imageView6.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL && imageView6.image != imageView1.image)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL && imageView9.image == NULL )
            {
                imageView3.image = oImage;
            }
            
        }
        
        if((imageView6.image == imageView7.image && imageView6.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
        }
        
        if((imageView6.image == imageView8.image && imageView6.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
        }
        
        if((imageView6.image == imageView9.image && imageView6.image == xImage) &&
            (imageView3.image == imageView5.image && imageView3.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
        }
        
        //*********For 7//
        
        if((imageView7.image == imageView2.image && imageView7.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL && imageView3.image != imageView5.image )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL  && imageView2.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            
        }
        
        if((imageView7.image == imageView3.image && imageView7.image == xImage) &&
            (imageView4.image == imageView5.image && imageView4.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL )
            {
                imageView6.image = oImage;
            }
            if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL )
            {
                imageView6.image = oImage;
            }

        }
        
        
        if((imageView7.image == imageView8.image && imageView7.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
        }
        
        
        
        if((imageView7.image == imageView9.image && imageView7.image == xImage) &&
            (imageView5.image == imageView8.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
            {
                imageView4.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
            {
                imageView2.image = oImage;
            }
            
        }

    //********For 8 *********//
   
        if((imageView8.image == imageView1.image && imageView8.image == xImage) &&
            (imageView4.image == imageView5.image && imageView4.image == oImage))
        {
            if (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            
        }
        
        
        if((imageView8.image == imageView3.image && imageView8.image == xImage) &&
            (imageView4.image == imageView5.image && imageView4.image == oImage))
        {
            
           NSLog(@"It display two images at a time...... ");
            
        }
        
        
        if((imageView8.image == imageView6.image && imageView8.image == xImage) &&
            (imageView5.image == imageView9.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL && imageView3.image != imageView6.image )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL )
            {
                imageView1.image = oImage;
            }
            else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL  && imageView7.image == NULL )
            {
                imageView1.image = oImage;
            }
        }
        
        
        
        
        if((imageView8.image == imageView9.image && imageView8.image == xImage) &&
            (imageView5.image == imageView7.image && imageView7.image == oImage))
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
        }
        
        //***********For 9//
        
        
        if((imageView9.image == imageView1.image && imageView9.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage) )
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
            
        }
        
        
        if((imageView9.image == imageView2.image && imageView9.image == xImage) &&
            (imageView5.image == imageView7.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
            {
                imageView3.image = oImage;
            }
            else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL )
            {
                imageView3.image = oImage;
            }
           
        }
        
        if((imageView9.image == imageView4.image && imageView9.image == xImage) &&
            (imageView3.image == imageView5.image && imageView5.image == oImage))
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
            {
                imageView7.image = oImage;
            }
            else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL )
            {
                imageView7.image = oImage;
            }
            
        }
        
    }

    //*************  Trail2 if Touch count is 3**********/

    if(touchCount == 3)
{
    
 //*******For 1//
    
    if((((imageView1.image == imageView2.image)&&(imageView2.image == imageView7.image))&& imageView1.image == xImage) && (((imageView3.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView4.image == oImage))
   {
      if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
      {
          imageView8.image = oImage;
      }
       if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
       {
           imageView6.image = oImage;
       }
   }
    
    if((((imageView1.image == imageView3.image)&&(imageView3.image == imageView4.image))&& imageView1.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
       else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
    }
    
    if((((imageView1.image == imageView4.image)&&(imageView4.image == imageView3.image))&& imageView1.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
    }
    
    
    if((((imageView1.image == imageView4.image)&&(imageView4.image == imageView3.image))&& imageView1.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
       else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }

       
    }

    
    if((((imageView1.image == imageView6.image)&&(imageView6.image == imageView2.image))&& imageView1.image == xImage) && (((imageView5.image == imageView9.image)&&(imageView9.image == imageView3.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
         else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }
        
    }
    if((((imageView1.image == imageView6.image)&&(imageView6.image == imageView3.image))&& imageView1.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
       else  if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        
    }
    
    
    if((((imageView1.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView1.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
        else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL  && imageView8.image != oImage)
        {
            imageView2.image = oImage;
        }
        


        
    }
    
    if((((imageView1.image == imageView7.image)&&(imageView7.image == imageView8.image))&& imageView1.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }

        
    }
    if((((imageView1.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView1.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
       else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
       
        
        
    }

  
    if((((imageView1.image == imageView8.image)&&(imageView8.image == imageView3.image))&& imageView1.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
    }
    
    if((((imageView1.image == imageView8.image)&&(imageView8.image == imageView3.image))&& imageView1.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
    }
    if((((imageView1.image == imageView9.image)&&(imageView9.image == imageView2.image))&& imageView1.image == xImage) && (((imageView3.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        
    }
    
    if((((imageView1.image == imageView9.image)&&(imageView9.image == imageView6.image))&& imageView1.image == xImage) && (((imageView3.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        
    }

//*******For 2********//
    if((((imageView2.image == imageView3.image)&&(imageView3.image == imageView9.image))&& imageView2.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        
    }
    if((((imageView2.image == imageView3.image)&&(imageView3.image == imageView4.image))&& imageView2.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }

        
    }
    if((((imageView2.image == imageView4.image)&&(imageView4.image == imageView7.image))&& imageView2.image == xImage) && (((imageView1.image == imageView3.image)&&(imageView3.image == imageView5.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL)
        {
            imageView9.image = oImage;
        }
        
    }
    if((((imageView2.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView2.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }

        
    }
    
    if((((imageView2.image == imageView7.image)&&(imageView7.image == imageView8.image))&& imageView2.image == xImage) && (((imageView1.image == imageView3.image)&&(imageView3.image == imageView5.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL)
        {
            imageView9.image = oImage;
        }
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL)
        {
            imageView9.image = oImage;
        }
        
        
        
    }

    
    if((((imageView2.image == imageView3.image)&&(imageView3.image == imageView8.image))&& imageView2.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
    }
    if((((imageView2.image == imageView9.image)&&(imageView9.image == imageView7.image))&& imageView2.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        
    }
    if((((imageView2.image == imageView9.image)&&(imageView9.image == imageView7.image))&& imageView2.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL && imageView3.image == NULL)
        {
            imageView6.image = oImage;
        }
        
    }
    if((((imageView2.image == imageView7.image)&&(imageView7.image == imageView6.image))&& imageView2.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])  && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        
    }

  //********For 3 ******//
    if((((imageView3.image == imageView1.image)&&(imageView1.image == imageView6.image))&& imageView3.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        
    }
    if((((imageView3.image == imageView1.image)&&(imageView1.image == imageView7.image))&& imageView3.image == xImage) && (((imageView2.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }

        
    }
    if((((imageView3.image == imageView7.image)&&(imageView7.image == imageView2.image))&& imageView3.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }

        
    }
    
    if((((imageView3.image == imageView7.image)&&(imageView7.image == imageView4.image))&& imageView3.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView9.image == NULL)
        {
            imageView9.image = oImage;
        }

        
        
    }
    if((((imageView3.image == imageView9.image)&&(imageView9.image == imageView2.image))&& imageView3.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }

        
    }
    
    
    
    
    
    if((((imageView3.image == imageView9.image)&&(imageView9.image == imageView8.image))&& imageView3.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        
        else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }

      
    }
    
    if((((imageView3.image == imageView9.image)&&(imageView9.image == imageView4.image))&& imageView3.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView2.image == oImage))
    {
        
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }
        
        
    }


    
    if((((imageView3.image == imageView9.image)&&(imageView9.image == imageView8.image))&& imageView3.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView5.image == oImage) && imageView1.image != imageView6.image)
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        
    }
    
//************ For 4//
    if((((imageView4.image == imageView3.image)&&(imageView3.image == imageView2.image))&& imageView4.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
       else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }
       else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL && imageView7.image != oImage)
       {
           imageView8.image = oImage;
       }
 
    }
    
    if((((imageView4.image == imageView2.image)&&(imageView2.image == imageView1.image))&& imageView4.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
        
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }

        
        
    }

    if((((imageView4.image == imageView3.image)&&(imageView3.image == imageView1.image))&& imageView4.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }

        
    }

    
    if((((imageView4.image == imageView3.image)&&(imageView3.image == imageView8.image))&& imageView4.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }
        
 
    }
    if((((imageView4.image == imageView3.image)&&(imageView3.image == imageView9.image))&& imageView4.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }
        
        
    }
    
    if((((imageView4.image == imageView6.image)&&(imageView6.image == imageView1.image))&& imageView4.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
       else  if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
       else  if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
       {
           imageView3.image = oImage;
       }

        
        
    }

    
    if((((imageView4.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView4.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
        
    }
    
    
    if((((imageView4.image == imageView8.image)&&(imageView8.image == imageView1.image))&& imageView4.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
       else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
       else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
       {
           imageView2.image = oImage;
       }
        
        
    }
    
    if((((imageView4.image == imageView9.image)&&(imageView9.image == imageView1.image))&& imageView4.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
       else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
       else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
       {
           imageView2.image = oImage;
       }
        
      
    }
    
    if((((imageView4.image == imageView9.image)&&(imageView9.image == imageView2.image))&& imageView4.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
        else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
      
    }
    
    
    if((((imageView4.image == imageView9.image)&&(imageView9.image == imageView7.image))&& imageView4.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView8.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL && imageView1.image == NULL)
        {
            imageView2.image = oImage;
        }
        
       
        
    }

    
    
    
    if((((imageView4.image == imageView9.image)&&(imageView9.image == imageView8.image))&& imageView4.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
       else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
       else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
       {
           imageView2.image = oImage;
       }

        
        
    }
//************* For 6 *********//
    
    
    if((((imageView6.image == imageView1.image)&&(imageView1.image == imageView3.image))&& imageView6.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }
    
    
    if((((imageView6.image == imageView4.image)&&(imageView4.image == imageView3.image))&& imageView6.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }

        
       
    }

    
    if((((imageView6.image == imageView8.image)&&(imageView8.image == imageView3.image))&& imageView6.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        
        
        
    }


    
    if((((imageView6.image == imageView9.image)&&(imageView9.image == imageView7.image))&& imageView6.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }
    
    if((((imageView6.image == imageView2.image)&&(imageView2.image == imageView3.image))&& imageView6.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        
        
    }

    
//***********For 7 ********//
    if((((imageView7.image == imageView1.image)&&(imageView1.image == imageView8.image))&& imageView7.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }
    
    if((((imageView7.image == imageView3.image)&&(imageView3.image == imageView6.image))&& imageView7.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        else if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        
        
    }
    
    
    

    
    if((((imageView7.image == imageView3.image)&&(imageView3.image == imageView8.image))&& imageView7.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
       else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
       else if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
       {
           imageView6.image = oImage;
       }

        
        
    }
    
    
    
    
    
    if((((imageView7.image == imageView3.image)&&(imageView3.image == imageView2.image))&& imageView7.image == xImage) && (((imageView1.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
       
        
    }
    

    
    
    if((((imageView7.image == imageView2.image)&&(imageView2.image == imageView8.image))&& imageView7.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        
        
    }

    
    if((((imageView7.image == imageView3.image)&&(imageView3.image == imageView9.image))&& imageView7.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView8.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }

        
        
        
    }

    
    if((((imageView7.image == imageView9.image)&&(imageView9.image == imageView4.image))&& imageView7.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
        
    }
    if((((imageView7.image == imageView9.image)&&(imageView9.image == imageView4.image))&& imageView7.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL && imageView3.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }


    
    if((((imageView7.image == imageView2.image)&&(imageView2.image == imageView1.image))&& imageView7.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL && imageView7.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL )
        {
            imageView6.image = oImage;
        }
        
        
        
    }

    
   //********* For 8 ***********//
    
    if((((imageView8.image == imageView1.image)&&(imageView1.image == imageView2.image))&& imageView8.image == xImage) && (((imageView3.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView7.image == NULL)
        {
            imageView7.image = oImage;
        }
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }

        
        
    }
    
    if((((imageView8.image == imageView1.image)&&(imageView1.image == imageView3.image))&& imageView8.image == xImage) && (((imageView2.image == imageView4.image)&&(imageView4.image == imageView5.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
        
    }
    
    
    if((((imageView8.image == imageView2.image)&&(imageView2.image == imageView3.image))&& imageView8.image == xImage) && (((imageView1.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView1.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
        
    }
    if((((imageView8.image == imageView3.image)&&(imageView3.image == imageView6.image))&& imageView8.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView9.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        
        
    }
    if((((imageView8.image == imageView4.image)&&(imageView4.image == imageView1.image))&& imageView8.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }
    if((((imageView8.image == imageView6.image)&&(imageView6.image == imageView1.image))&& imageView8.image == xImage) && (((imageView5.image == imageView7.image)&&(imageView7.image == imageView9.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }

//**************For 9 **********//
    if((((imageView9.image == imageView1.image)&&(imageView1.image == imageView3.image))&& imageView9.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView7.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
       else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
        
        
    }
    if((((imageView9.image == imageView1.image)&&(imageView1.image == imageView3.image))&& imageView9.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView4.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
       else  if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView6.image == NULL)
        {
            imageView6.image = oImage;
        }
    
        
    }
    
    if((((imageView9.image == imageView1.image)&&(imageView1.image == imageView3.image))&& imageView9.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL && imageView7.image != oImage)
        {
            imageView4.image = oImage;
        }
       
        
        
    }
    
    
    if((((imageView9.image == imageView2.image)&&(imageView2.image == imageView3.image))&& imageView9.image == xImage) && (((imageView5.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView5.image == oImage))
    {
        if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && imageView1.image == NULL)
        {
            imageView1.image = oImage;
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }

        
        
        
    }
    
    
    
    if((((imageView9.image == imageView4.image)&&(imageView4.image == imageView7.image))&& imageView9.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView3.image == oImage) && imageView1.image != imageView5.image)
    {
        if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && imageView2.image == NULL)
        {
            imageView2.image = oImage;
        }
        
        
    }

    



    if((((imageView9.image == imageView6.image)&&(imageView6.image == imageView7.image))&& imageView9.image == xImage) && (((imageView3.image == imageView5.image)&&(imageView5.image == imageView4.image))&& imageView3.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView4.image == NULL)
        {
            imageView4.image = oImage;
        }
        
       
    }
    
    
    if((((imageView1.image == imageView7.image)&&(imageView7.image == imageView6.image))&& imageView1.image == xImage) && (((imageView4.image == imageView5.image)&&(imageView5.image == imageView8.image))&& imageView4.image == oImage))
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && imageView3.image == NULL)
        {
            imageView3.image = oImage;
        }
        
        
        
    }
    if((((imageView3.image == imageView9.image)&&(imageView9.image == imageView4.image))&& imageView3.image == xImage) && (((imageView2.image == imageView5.image)&&(imageView5.image == imageView6.image))&& imageView2.image == oImage))
    {
        if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && imageView8.image == NULL)
        {
            imageView8.image = oImage;
        }
        
      
    }
    



    



    
 //Close touchcount 3//
}



// computer opponent close//
}

-(void) resetBoardForGame
{
    imageView1.image = NULL;
    imageView2.image = NULL;
    imageView3.image = NULL;
    imageView4.image = NULL;
    imageView5.image = NULL;
    imageView6.image = NULL;
    imageView7.image = NULL;
    imageView8.image = NULL;
    imageView9.image = NULL;
    
    
    
    image1Button.enabled = NO;
    image2Button.enabled = NO;
    image3Button.enabled = NO;
    image4Button.enabled = NO;
    image5Button.enabled = NO;
    image6Button.enabled = NO;
    image7Button.enabled = NO;
    image8Button.enabled = NO;
    image9Button.enabled = NO;
    
    
    image1Button.hidden = YES;
    image2Button.hidden = YES;
    image3Button.hidden = YES;
    image4Button.hidden = YES;
    image5Button.hidden = YES;
    image6Button.hidden = YES;
    image7Button.hidden = YES;
    image8Button.hidden = YES;
    image9Button.hidden = YES;
    
    
    //reset the player token and update the label text
    playerTokenForPlayers= 1;
    numberOfPlaysForGame = 0;
    touchCount = 0;
    turnForGame1.text =[NSString stringWithFormat:@"%@ Go",self.PlayerName1StringFor1Player];

}

-(void)computerAsOpponent
{
    imageWasUsedForOnePlayer = NO;
    if(touchCount == 0)
    {
        if(imageView5.image != NULL && imageView1.image == NULL)
        {
            imageView1.image =oImage;
        }
    }
    if(touchCount >=1)
    {
        if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage) &&
            imageView8.image == NULL)
        {
            imageView8.image = oImage;
            
        }
       else if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage) &&
            imageView7.image == NULL)
        {
            imageView7.image = oImage;
            
        }
       else if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage) &&
            imageView6.image == NULL && imageView3.image == NULL)
        {
            imageView6.image = oImage;
            
        }
        else if(CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage) &&
            imageView4.image == NULL)
        {
            imageView4.image = oImage;
            
        }
        else if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage) &&
                 imageView3.image == NULL)
        {
            imageView3.image = oImage;
            
        }
        else if(CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage && imageView9.image != NULL) &&
                 imageView2.image == NULL)
        {
            imageView2.image = oImage;
            
        }
        else if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && (imageView5.image == xImage && imageView1.image == oImage) &&
                 imageView3.image == NULL)
        {
            imageView3.image = oImage;
            
        }
        
       else  if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]))
        {
            if((imageView5.image == imageView3.image && imageView5.image == xImage) && (imageView1.image == imageView7.image && imageView1.image == oImage) && imageView6.image == NULL)
            {
                
            }
        }
    }
    
    
   
        if(touchCount >= 1)
        {
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view])) ||
                (CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view])))
            {
                if((imageView1.image != NULL && imageView2.image != NULL) && (imageView1.image == imageView2.image) &&imageView3.image == NULL)
                {
                    imageView3.image = oImage;
                }
                else if((imageView1.image != NULL && imageView3.image != NULL) && (imageView1.image == imageView3.image) && imageView2.image == NULL)
                {
                    imageView2.image = oImage;
                }
                else if((imageView2.image != NULL && imageView3.image != NULL) && (imageView2.image == imageView3.image) && imageView1.image == NULL)
                {
                    imageView1.image = oImage;
                }
            }
            
            
            
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
                (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view])))
            {
                if((imageView4.image != NULL && imageView5.image != NULL) && (imageView4.image == imageView5.image) &&imageView6.image == NULL && imageView3.image == NULL)
                {
                    imageView6.image = oImage;
                }
                else if((imageView5.image != NULL && imageView6.image != NULL) && (imageView5.image == imageView6.image) &&imageView4.image == NULL)
                {
                    imageView4.image = oImage;
                }
                else if((imageView4.image != NULL && imageView6.image != NULL) && (imageView4.image == imageView6.image) &&imageView5.image == NULL)
                {
                    imageView5.image = oImage;
                }
                if((imageView4.image != NULL && imageView5.image != NULL) && (imageView4.image == imageView5.image) &&imageView6.image == NULL )
                {
                    imageView6.image = oImage;
                }
                
            }
            
            if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) ||
                (CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
            {
                if((imageView7.image != NULL && imageView8.image != NULL) && (imageView7.image == imageView8.image) &&imageView9.image == NULL && imageView6.image != imageView7.image && imageView6.image != imageView3.image && imageView2.image != NULL && imageView3.image == NULL)
                {
                    imageView9.image = oImage;
                }
                else if((imageView8.image != NULL && imageView9.image != NULL) && (imageView8.image == imageView9.image) && imageView7.image == NULL && imageView6.image == NULL && imageView3.image == NULL && imageView2.image == NULL)
                {
                    imageView7.image = oImage;
                }
                else if((imageView9.image != NULL && imageView7.image != NULL) && (imageView9.image == imageView7.image) &&imageView8.image == NULL)
                {
                    imageView8.image = oImage;
                }
            }
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view])) ||
                (CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])) )
            {
                if((imageView1.image != NULL && imageView4.image != NULL) && (imageView1.image == imageView4.image) && imageView7.image == NULL)
                {
                    imageView7.image = oImage;
                }
                else if((imageView4.image != NULL && imageView7.image != NULL) && (imageView4.image == imageView7.image) && imageView1.image == NULL)
                {
                    imageView1.image = oImage;
                }
                else if((imageView1.image != NULL && imageView7.image != NULL) && (imageView1.image == imageView7.image) && imageView4.image == NULL)
                {
                    imageView4.image = oImage;
                }
            }
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
                (CGRectContainsPoint([imageView8 frame], [touch1 locationInView:self.view])) )
            {
                if((imageView2.image != NULL && imageView5.image != NULL) && (imageView2.image == imageView5.image) && imageView8.image == NULL)
                {
                    imageView8.image = oImage;
                }
                else if((imageView2.image != NULL && imageView8.image != NULL) && (imageView2.image == imageView8.image) && imageView5.image == NULL)
                {
                    imageView5.image = oImage;
                }
                else if((imageView5.image != NULL && imageView8.image != NULL) && (imageView5.image == imageView8.image) && imageView2.image == NULL)
                {
                    imageView2.image = oImage;
                }
            }
            if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView6 frame], [touch1 locationInView:self.view]))||
                (CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
            {
                if((imageView3.image != NULL && imageView6.image != NULL) && (imageView3.image == imageView6.image) && imageView9.image == NULL &&
                    (imageView2.image != imageView5.image && imageView5.image == xImage) &&
                    imageView5.image != imageView6.image && imageView5.image == xImage)
                {
                    imageView9.image = oImage;
                }
                else if((imageView3.image != NULL && imageView9.image != NULL) && (imageView3.image == imageView9.image) && imageView6.image == NULL && imageView1.image != imageView9.image && imageView2.image == NULL)
                {
                    imageView6.image = oImage;
                }
                else if((imageView6.image != NULL && imageView9.image != NULL) && (imageView6.image == imageView9.image) && imageView3.image == NULL)
                {
                    imageView3.image = oImage;
                }
            }
            if(CGRectContainsPoint([imageView1 frame], [touch1 locationInView:self.view]) || (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view])) )
            {
                if((imageView1.image != NULL && imageView5.image != NULL) && (imageView1.image == imageView5.image) && imageView9.image == NULL)
                {
                    imageView9.image = oImage;
                }
                else if((imageView5.image != NULL && imageView9.image != NULL) && (imageView5.image == imageView9.image) && imageView1.image == NULL)
                {
                    imageView1.image = oImage;
                }
                else if((imageView1.image != NULL && imageView9.image != NULL) && (imageView1.image == imageView9.image) && imageView5.image == NULL)
                {
                    imageView5.image = oImage;
                }
            }
            
            if(CGRectContainsPoint([imageView3 frame], [touch1 locationInView:self.view]) ||
                (CGRectContainsPoint([imageView5 frame], [touch1 locationInView:self.view])) ||
                (CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view])) )
            {
                if((imageView3.image != NULL && imageView5.image != NULL) && (imageView3.image == imageView5.image)&& imageView7.image == NULL )
                {
                    imageView7.image = oImage;
                }
                else if((imageView3.image != NULL && imageView7.image != NULL) && (imageView3.image == imageView7.image) && imageView5.image == NULL)
                {
                    imageView5.image = oImage;
                }
                else if((imageView5.image != NULL && imageView7.image != NULL) && (imageView5.image == imageView7.image) && (imageView3.image == NULL && imageView4.image == NULL))
                {
                    imageView3.image = oImage;
                }
            }
            
            

        }

    
    
    
   
    if(touchCount == 3)
    {
        if((imageView5.image == imageView7.image && imageView7.image == imageView2.image) && imageView5.image == xImage &&
            (imageView1.image == imageView3.image && imageView3.image == imageView8.image) &&
            imageView1.image == oImage)
        {
            if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && (imageView4.image == NULL))
            {
                imageView4.image = oImage;
                
            }
        
        
        }
       if((imageView5.image == imageView7.image && imageView7.image == imageView9.image) && imageView5.image == xImage &&
            (imageView1.image == imageView3.image && imageView3.image == imageView8.image) &&
            imageView1.image == oImage)
        {
            if(CGRectContainsPoint([imageView2 frame], [touch1 locationInView:self.view]) && (imageView4.image == NULL))
            {
                imageView4.image = oImage;
                
            }
        }
      if((imageView5.image == imageView9.image && imageView9.image == imageView2.image) && imageView5.image == xImage &&
                  (imageView1.image == imageView3.image && imageView3.image == imageView8.image) &&
                  imageView1.image == oImage)
         {
             if(CGRectContainsPoint([imageView7 frame], [touch1 locationInView:self.view]) && (imageView4.image == NULL))
             {
                 imageView4.image = oImage;
                 
             }
             if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && (imageView6.image == NULL))
             {
                 imageView6.image = oImage;
                 
             }
         }
        
        if((imageView5.image == imageView3.image && imageView3.image == imageView4.image) && imageView5.image == xImage &&
            (imageView1.image == imageView6.image && imageView6.image == imageView7.image) &&
            imageView1.image == oImage)
        {
            if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && (imageView2.image == NULL))
            {
                imageView2.image = oImage;
                
            }
        }
        if((imageView5.image == imageView3.image && imageView3.image == imageView9.image) && imageView5.image == xImage &&
            (imageView1.image == imageView6.image && imageView6.image == imageView7.image) &&
            imageView1.image == oImage)
        {
            if(CGRectContainsPoint([imageView4 frame], [touch1 locationInView:self.view]) && (imageView2.image == NULL))
            {
                imageView2.image = oImage;
                
            }
        }
        if((imageView5.image == imageView3.image && imageView3.image == imageView8.image) && imageView5.image == xImage &&
            (imageView1.image == imageView2.image && imageView2.image == imageView7.image) &&
            imageView1.image == oImage)
        {
            if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && (imageView4.image == NULL))
            {
                imageView4.image = oImage;
                
            }
        }

        
        
        if((imageView5.image == imageView3.image && imageView3.image == imageView2.image) && imageView5.image == xImage &&
            (imageView1.image == imageView7.image && imageView7.image == imageView8.image) &&
            imageView1.image == oImage)
        {
           
          
            
            if(CGRectContainsPoint([imageView9 frame], [touch1 locationInView:self.view]) && (imageView4.image == NULL))
            {
                imageView4.image = oImage;
                
            }
        }



        
        
        
        
        
    }



   
}

- (void) updatePlayerInfoForPlayers
{
        if(playerTokenForPlayers == 1)
        {
            
//            playerTokenForPlayers = 2; //because now its the second players turn
//            NSLog(@"all is well");
//            _turnForGame1.text = @"O can go"; //Update the label to tell who goes next
//                   [self playOpponentMove];
            
        }
    
    
        else
        {
//        playerTokenForPlayers = 1;
//        _turnForGame1.text =@"X can go";
//        NSLog(@"Hai this is my Good luck");
////            [self playOpponentMove];
//            
//
        }
    
                              

}

- (void)viewDidUnload {
    [self setBgImgForOnePlyr:nil];
    [self setImage1Button:nil];
    [self setImage2Button:nil];
    [self setImage3Button:nil];
    [self setImage4Button:nil];
    [self setImage5Button:nil];
    [self setImage6Button:nil];
    [self setImage7Button:nil];
    [self setImage8Button:nil];
    [self setImage9Button:nil];
   
    [super viewDidUnload];
}
- (IBAction)sampleAction:(UIButton *)sender
{
    
    NSLog(@"Touch count is %d..............",touchCount);
    
    
}
@end
