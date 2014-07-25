//
//  OnePlayer.h
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "TicTacForOnePlayer.h"

@interface OnePlayer : UIViewController
{
    BOOL iAddForOnePlyr;
}
@property (weak, nonatomic) IBOutlet UITextField *onePlayer1Outlet;
@property (weak, nonatomic) IBOutlet UITextField *onePlayer2Outlet;
@property (weak, nonatomic) IBOutlet ADBannerView *iAddForOnePlayer;




- (IBAction)onePlayer1Action:(id)sender;
- (IBAction)onePlayer2Action:(id)sender;
- (IBAction)startButtonAction:(id)sender;


@end
