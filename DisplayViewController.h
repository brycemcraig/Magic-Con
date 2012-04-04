//
//  DisplayViewController.h
//  Magic-Con
//
//  Created by Bryce Craig on 3/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Speaker.h"

@interface DisplayViewController : UIViewController

@property (strong, nonatomic) Speaker *currentSpeaker;
@property (strong, nonatomic) NSDictionary *currentSpeakerDict;
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;
@property (weak, nonatomic) IBOutlet UITextView *speakerNotes;

@end
