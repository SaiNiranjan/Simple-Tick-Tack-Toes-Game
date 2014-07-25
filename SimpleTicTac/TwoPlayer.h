//
//  TwoPlayer.h
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TicTacGame.h"

@interface TwoPlayer : UIViewController
{
   BOOL iAddForTwoPlyr;
}
@property (weak, nonatomic) IBOutlet UITextField *twoPlayer1Name;
@property (weak, nonatomic) IBOutlet UITextField *twoPlayer2Name;
@property (weak, nonatomic) IBOutlet ADBannerView *iAddForTwoplayer;
- (IBAction)twoPlayer1Action:(id)sender;
- (IBAction)twoPlayer2Action:(id)sender;
- (IBAction)startButtonAction:(id)sender;



@end
