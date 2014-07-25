//
//  TicTacGrid5.h
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/8/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwoPlayer.h"
@class TicTacGame;
#import <MessageUI/MessageUI.h>


@interface TicTacGrid5 : UIViewController<UIActionSheetDelegate,MFMailComposeViewControllerDelegate>
{
    NSInteger playerTokenForGrid5;
    BOOL imageWasUsedForGrid5;
    NSInteger numberOfPlaysForGrid5;
}

@property (weak, nonatomic) IBOutlet UILabel *player1NameForGri5;
@property (weak, nonatomic) IBOutlet UILabel *player2NameForGrid5;
@property (weak, nonatomic) IBOutlet UILabel *turnGameForGrid5;

@property (weak, nonatomic) IBOutlet UIImageView *grid5ImageViewBoard;

@property (weak, nonatomic) IBOutlet UIImageView *bgImgForGrid5;


@property (weak, nonatomic) IBOutlet UIImageView *imgView1;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UIImageView *imgView3;
@property (weak, nonatomic) IBOutlet UIImageView *imgView4;
@property (weak, nonatomic) IBOutlet UIImageView *imgView5;
@property (weak, nonatomic) IBOutlet UIImageView *imgView6;
@property (weak, nonatomic) IBOutlet UIImageView *imgView7;
@property (weak, nonatomic) IBOutlet UIImageView *imgView8;
@property (weak, nonatomic) IBOutlet UIImageView *imgView9;
@property (weak, nonatomic) IBOutlet UIImageView *imgView10;
@property (weak, nonatomic) IBOutlet UIImageView *imgView11;
@property (weak, nonatomic) IBOutlet UIImageView *imgView12;
@property (weak, nonatomic) IBOutlet UIImageView *imgView13;
@property (weak, nonatomic) IBOutlet UIImageView *imgView14;
@property (weak, nonatomic) IBOutlet UIImageView *imgView15;
@property (weak, nonatomic) IBOutlet UIImageView *imgView16;
@property (weak, nonatomic) IBOutlet UIImageView *imgView17;
@property (weak, nonatomic) IBOutlet UIImageView *imgView18;
@property (weak, nonatomic) IBOutlet UIImageView *imgView19;
@property (weak, nonatomic) IBOutlet UIImageView *imgView20;
@property (weak, nonatomic) IBOutlet UIImageView *imgView21;
@property (weak, nonatomic) IBOutlet UIImageView *imgView22;
@property (weak, nonatomic) IBOutlet UIImageView *imgView23;
@property (weak, nonatomic) IBOutlet UIImageView *imgView24;
@property (weak, nonatomic) IBOutlet UIImageView *imgView25;


@property (nonatomic,retain) UIImage *oImgForGrid5;
@property (nonatomic,retain) UIImage *xImgForGrid5;
@property (nonatomic,retain) UIImage *theImgForGrid5;

- (IBAction)grid5ResetAction:(UIButton *)sender;
- (IBAction)grid5MenuAction:(UIButton *)sender;



/************For Matrix 5 *******/

-(void) processLogicForMarix5;
-(BOOL) checkForWinForMatrix5;
-(void) resetBoardForMatrix5;
- (void) updatePlayerInfoForMatrix5;



@property (nonatomic, retain) NSString *PlayerName1StringForGrid5Player,*PlayerName2StringForGrid5Player;




@end
