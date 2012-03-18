//
//  ScheduleTableViewController.h
//  Magic-Con
//
//  Created by Bryce Craig on 3/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleTableViewController : UITableViewController {

    NSMutableArray *thursdayScheduleArray;
    NSMutableArray *fridayScheduleArray;
    NSMutableArray *saturdayScheduleArray;
    NSMutableArray *sundayScheduleArray;
    
}

@property (retain, atomic) NSMutableArray *thursdayScheduleArray;
@property (retain, atomic) NSMutableArray *fridayScheduleArray;
@property (retain, atomic) NSMutableArray *saturdayScheduleArray;
@property (retain, atomic) NSMutableArray *sundayScheduleArray;

@end
