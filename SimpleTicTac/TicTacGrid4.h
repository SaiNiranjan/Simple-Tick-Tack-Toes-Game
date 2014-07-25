//
//  TicTacGrid4.h
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/8/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwoPlayer.h"
#import <MessageUI/MessageUI.h>
@class TicTacGame;

@interface TicTacGrid4 : UIViewController<UIActionSheetDelegate,MFMailComposeViewControllerDelegate>
{
    /*******For Matrix 4*******/
    
    NSInteger playerTokenForGrid4;
    BOOL imageWasUsedForGrid4;
    NSInteger numberOfPlaysForGrid4;
 
}
@property (weak, nonatomic) IBOutlet UILabel *player1NameForGri4;
@property (weak, nonatomic) IBOutlet UILabel *player2NameForGrid4;
@property (weak, nonatomic) IBOutlet UILabel *turnGameForGrid4;


@property (weak, nonatomic) IBOutlet UIImageView *grid4ImageViewBoard;

@property (weak, nonatomic) IBOutlet UIImageView *bgimgForGrid4;

@property (weak, nonatomic) IBOutlet UIImageView *imgVw1;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw2;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw3;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw4;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw5;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw6;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw7;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw8;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw9;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw10;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw11;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw12;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw13;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw14;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw15;
@property (weak, nonatomic) IBOutlet UIImageView *imgVw16;


@property (nonatomic,retain) UIImage *oImgForGrid4;
@property (nonatomic,retain) UIImage *xImgForGrid4;
@property (nonatomic,retain) UIImage *theImgForGrid4;

- (IBAction)grid4ResetAction:(UIButton *)sender;
- (IBAction)grid4MenuAction:(UIButton *)sender;



@property (nonatomic, retain) NSString *PlayerName1StringForGrid4Player,*PlayerName2StringForGrid4Player;



/************For Matrix 4 *******/

-(void) processLogicForMarix4;
-(BOOL) checkForWinForMatrix4;
-(void) resetBoardForMatrix4;
- (void) updatePlayerInfoForMatrix4;



@end
