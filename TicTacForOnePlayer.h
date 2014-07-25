//
//  TicTacForOnePlayer.h
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/6/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OnePlayer.h"
#import <MessageUI/MessageUI.h>
//define the constants:
#define CELL_WIDTH 100
#define CELL_HEIGHT 100
#define NUMBER_OF_ROWS 3
//
////these might be used elsewhere
#define NUMBER_OF_COLUMNS  3
#define NUMBER_OF_CELLS = NUMBER_OF_ROWS * NUMBER_OF_COLUMNS
#define BOARD_WIDTH = CELL_WIDTH * NUMBER_OF_COLUMNS

@interface TicTacForOnePlayer : UIViewController<UIActionSheetDelegate,MFMailComposeViewControllerDelegate>
{
    NSInteger playerTokenForPlayers;
    BOOL imageWasUsedForOnePlayer;
    CGPoint touchPoint;
    UITouch *touch1;
    int touchCount;
    int x;
    NSTimer *  mainTimer;
    NSInteger numberOfPlaysForGame;
    UIAlertView *myAlertView1,*myAlertView;
    
    //Button Creation//
    UIButton *img1Button;
    UIButton *img2Button;
    UIButton *img3Button;
    UIButton *img4Button;
    UIButton *img5Button;
    UIButton *img6Button;
    UIButton *img7Button;
    UIButton *img8Button;
    UIButton *img9Button;
    
    
    UIAlertView *alertForWin;
    
    
    
    
}
@property (retain, nonatomic) IBOutlet UIButton *menuButtonOutlet;

@property (weak, nonatomic) IBOutlet UILabel *player1Game;
@property (weak, nonatomic) IBOutlet UILabel *player2Game;
@property (nonatomic, retain) NSString *PlayerName1StringFor1Player,*PlayerName2StringFor1Player;
@property (weak, nonatomic) IBOutlet UIImageView *gameImageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;
@property (weak, nonatomic) IBOutlet UIImageView *imageView5;
@property (weak, nonatomic) IBOutlet UIImageView *imageView6;
@property (weak, nonatomic) IBOutlet UIImageView *imageView7;
@property (weak, nonatomic) IBOutlet UIImageView *imageView8;
@property (weak, nonatomic) IBOutlet UIImageView *imageView9;
@property (weak, nonatomic) IBOutlet UILabel *turnForGame1;
@property (nonatomic,retain) UIImage *oImage;
@property (nonatomic,retain) UIImage *xImage;
@property (nonatomic,retain) UIImage *theImage;
@property (weak, nonatomic) IBOutlet UIImageView *bgImgForOnePlyr;

//Button Creation//
@property (weak, nonatomic) IBOutlet UIButton *image1Button;
@property (weak, nonatomic) IBOutlet UIButton *image2Button;
@property (weak, nonatomic) IBOutlet UIButton *image3Button;
@property (weak, nonatomic) IBOutlet UIButton *image4Button;

@property (weak, nonatomic) IBOutlet UIButton *image5Button;
@property (weak, nonatomic) IBOutlet UIButton *image6Button;
@property (weak, nonatomic) IBOutlet UIButton *image7Button;
@property (weak, nonatomic) IBOutlet UIButton *image8Button;
@property (weak, nonatomic) IBOutlet UIButton *image9Button;


//Button Action//
- (IBAction)image1Action:(UIButton *)sender;

- (IBAction)image2Action:(UIButton *)sender;

- (IBAction)image3Action:(UIButton *)sender;
- (IBAction)image4Action:(UIButton *)sender;
- (IBAction)image5Action:(UIButton *)sender;
- (IBAction)image6Action:(UIButton *)sender;
- (IBAction)image7Action:(UIButton *)sender;

- (IBAction)image8Action:(UIButton *)sender;
- (IBAction)image9Action:(UIButton *)sender;





- (IBAction)resetAction1:(id)sender;

- (IBAction)menuButtonAction:(id)sender;

- (BOOL)placeToken:(CGPoint) touch;
-(void) processLogicForGame;
-(void) resetBoardForGame;
- (void) updatePlayerInfoForPlayers;
-(void)computerPlayWithUser;
-(void)computerAsOpponent;

@end
