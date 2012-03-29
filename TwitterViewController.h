//
//  TwitterViewController.h
//  Magic-Con
//
//  Created by Bryce Craig on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwitterViewController : UIViewController <UIWebViewDelegate> {
    UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;


@end
