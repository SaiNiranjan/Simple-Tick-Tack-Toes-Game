//
//  TicTacGame.h
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "TicTacGrid4.h"
#import "TicTacGrid5.h"
#import <MessageUI/MessageUI.h>
@class TwoPlayer;
@class OnePlayer;
#import <iAd/iAd.h>
#import <AVFoundation/AVFoundation.h>


@interface TicTacGame : UIViewController<UIActionSheetDelegate,MFMailComposeViewControllerDelegate>
{
    /******For matrix 3*******/
    NSInteger playerToken;
    BOOL imageWasUsed;
    NSInteger numberOfPlays;
    UIButton *back;
    UIBarButtonItem *backBar;
    
    
    BOOL iAddForTwoPlyr;
    UIImage *backImage;
    
    UIAlertView *myAlertView;
    UIAlertView *myAlertView1;
    
  
}

@property (retain, nonatomic) IBOutlet UIButton *menuButtonOutlet;
@property (weak, nonatomic) IBOutlet UILabel *player1Game;
@property (weak, nonatomic) IBOutlet UILabel *player2Game;
@property (weak, nonatomic) IBOutlet UILabel *turnForPlayersOutlet;

@property (weak, nonatomic) IBOutlet UIImageView *boardImageView;
@property (weak, nonatomic) IBOutlet UIImageView *imagView1;
@property (weak, nonatomic) IBOutlet UIImageView *imagView2;
@property (weak, nonatomic) IBOutlet UIImageView *imagView3;
@property (weak, nonatomic) IBOutlet UIImageView *imagView4;
@property (weak, nonatomic) IBOutlet UIImageView *imagView5;
@property (weak, nonatomic) IBOutlet UIImageView *imagView6;
@property (weak, nonatomic) IBOutlet UIImageView *imagView7;
@property (weak, nonatomic) IBOutlet UIImageView *imagView8;
@property (weak, nonatomic) IBOutlet UIImageView *imagView9;




@property (weak, nonatomic) IBOutlet UIButton *resetOutlet;
@property (weak, nonatomic) IBOutlet UIButton *grid3Outlet;
@property (weak, nonatomic) IBOutlet UIButton *grid4Outlet;
@property (weak, nonatomic) IBOutlet UIButton *grid5Outlet;

@property (strong, nonatomic) IBOutlet UIView *gri3View;



@property (nonatomic,retain) UIImage *oImg;
@property (nonatomic,retain) UIImage *xImg;
@property (nonatomic,retain) UIImage *theImg;
@property (weak, nonatomic) IBOutlet UIImageView *bgImgForGrid3;




@property (nonatomic, retain) NSString *PlayerName1StringForOnePlayer,*PlayerName2StringForOnePlayer;
@property (weak, nonatomic) IBOutlet UIView *onePlayerGameView;

- (IBAction)menuButtonAction:(id)sender;
- (IBAction)resetAction:(UIButton *)sender;
- (IBAction)grid3Action:(UIButton *)sender;
- (IBAction)grid4Action:(UIButton *)sender;
- (IBAction)grid5Action:(UIButton *)sender;



/*************For Matrix 3*******/
//- (BOOL)placeToken:(CGPoint) touch;
-(void) processLogic;
-(BOOL) checkForWin;
-(void) resetBoard;
- (void) updatePlayerInfo;



@end
