//
//  RequestPage.h
//  Construct_Skills
//
//  Created by Akshita on 04/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface RequestPage : UIViewController

@property (strong, nonatomic) IBOutlet UIBarButtonItem *menubtn;
@property (strong, nonatomic) IBOutlet UITextField *request_num11;
@property (strong, nonatomic) IBOutlet UIButton *submitbtn;
- (IBAction)submitaction:(id)sender;

@end
