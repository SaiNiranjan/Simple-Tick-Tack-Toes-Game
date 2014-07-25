//
//  ViewController.h
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OnePlayer.h"
#import "TwoPlayer.h"
#import <AVFoundation/AVFoundation.h>
#import <GameKit/GameKit.h>
#import <iAd/iAd.h>
#import "InfoAppController.h"

@interface ViewController : UIViewController<GKPeerPickerControllerDelegate , GKSessionDelegate>
{
    AVAudioPlayer *SoundForGame;
    AVAudioPlayer *soundForTicTacGame;
    UIButton *homeButton;
    UIImage *homeImage;
    
    int i;
    int j;
    int soundForTicTac;
    int soundForTicTac2;
   BOOL iAddForViewCntrl;
    UIImageView *soundEffects;
    UIButton  *info;
    
    UIBarButtonItem *homeBarButtonItem;
    UIBarButtonItem *infoBarButton;
    
    UIAlertView *alertForNearBy;
    
   

}
@property (weak, nonatomic) IBOutlet UIButton *onePlayerOutlet;
@property (weak, nonatomic) IBOutlet UIButton *twoPlayerOutlet;
@property (weak, nonatomic) IBOutlet UIButton *nearByOutlet;
@property (weak, nonatomic) IBOutlet UIButton *moreAppOutlet;
@property (weak, nonatomic) IBOutlet UIView *optionsView;
@property(nonatomic, retain) GKSession *session;



- (IBAction)onePlayerAction:(id)sender;
- (IBAction)twoPlayerAction:(id)sender;
- (IBAction)nearByAction:(id)sender;
- (IBAction)moreAppAction:(id)sender;
- (IBAction)OptionsAction:(id)sender;
- (IBAction)infoAction:(id)sender;
- (IBAction)BackForHome:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *spOutlet;
@property (weak, nonatomic) IBOutlet UIButton *nqOutlet;
@property (weak, nonatomic) IBOutlet UIButton *bgcOutlet;
@property (weak, nonatomic) IBOutlet UIButton *dlOutlet;
@property (weak, nonatomic) IBOutlet UIButton *btOutlet;
@property (weak, nonatomic) IBOutlet UIButton *lcOutlet;
@property (weak, nonatomic) IBOutlet ADBannerView *iAddForViewController;
@property (weak, nonatomic) IBOutlet UIImageView *bgImgForVc;
@property(assign) BOOL jhansi;


- (IBAction)sqAction:(UIButton *)sender;
- (IBAction)nqAction:(UIButton *)sender;
- (IBAction)bgcAction:(UIButton *)sender;
- (IBAction)dlAction:(UIButton *)sender;
- (IBAction)btAction:(UIButton *)sender;
- (IBAction)lcAction:(UIButton *)sender;

@end
