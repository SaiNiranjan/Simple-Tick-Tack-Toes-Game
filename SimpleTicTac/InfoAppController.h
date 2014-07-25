//
//  InfoAppController.h
//  TicTac
//
//  Created by Krishna Dhulipalla on 11/21/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoAppController : UIViewController
{
    
}
@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentDescription;
@property (retain, nonatomic) IBOutlet UITextView *textView;

- (IBAction) segmentDescriptionAction:(id)sender;
- (IBAction)homeButton:(id)sender;

@end
