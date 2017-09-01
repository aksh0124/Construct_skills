//
//  SenderViewController.h
//  Construct_Skills
//
//  Created by Akshita on 01/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface SenderViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    BOOL flag;
}

@property (strong, nonatomic) IBOutlet UIBarButtonItem *menubtn;

@property (strong, nonatomic) IBOutlet UITextField *challan_no;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UITextField *site_from;
@property (strong, nonatomic) IBOutlet UITextField *site_to;
@property (strong, nonatomic) IBOutlet UITextField *driver_name;
@property (strong, nonatomic) IBOutlet UITextField *vehicle_no;

@property (strong, nonatomic) IBOutlet UITextField *item1;
@property (strong, nonatomic) IBOutlet UITextField *item2;
@property (strong, nonatomic) IBOutlet UITextField *item3;
@property (strong, nonatomic) IBOutlet UITextField *item4;
@property (strong, nonatomic) IBOutlet UITextField *item5;

@property (strong, nonatomic) IBOutlet UIButton *dropbtn1;
@property (strong, nonatomic) IBOutlet UIButton *dropbtn2;
@property (strong, nonatomic) IBOutlet UIButton *dropbtn3;
@property (strong, nonatomic) IBOutlet UIButton *dropbtn4;
@property (strong, nonatomic) IBOutlet UIButton *dropbtn5;

- (IBAction)dropbtn1action:(id)sender;
- (IBAction)dropbtn2action:(id)sender;
- (IBAction)dropbtn3ction:(id)sender;
- (IBAction)dropbtn4action:(id)sender;
- (IBAction)dropbtn5action:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *qty_req1;
@property (strong, nonatomic) IBOutlet UITextField *qty_req2;
@property (strong, nonatomic) IBOutlet UITextField *qty_req3;
@property (strong, nonatomic) IBOutlet UITextField *qty_req4;
@property (strong, nonatomic) IBOutlet UITextField *qty_req5;

@property (strong, nonatomic) IBOutlet UITextField *qty_sent1;
@property (strong, nonatomic) IBOutlet UITextField *qty_sent2;
@property (strong, nonatomic) IBOutlet UITextField *qty_sent3;
@property (strong, nonatomic) IBOutlet UITextField *qty_sent4;
@property (strong, nonatomic) IBOutlet UITextField *qty_sent5;

@property (strong, nonatomic) IBOutlet UITextField *unit1;
@property (strong, nonatomic) IBOutlet UITextField *unit2;
@property (strong, nonatomic) IBOutlet UITextField *unit3;
@property (strong, nonatomic) IBOutlet UITextField *unit4;
@property (strong, nonatomic) IBOutlet UITextField *unit5;

@property (strong, nonatomic) IBOutlet UIButton *unitbtn1;
@property (strong, nonatomic) IBOutlet UIButton *unitbtn2;
@property (strong, nonatomic) IBOutlet UIButton *unitbtn3;
@property (strong, nonatomic) IBOutlet UIButton *unitbtn4;
@property (strong, nonatomic) IBOutlet UIButton *unitbtn5;

- (IBAction)unitbtn1action:(id)sender;
- (IBAction)unitbtn2action:(id)sender;
- (IBAction)unitbtn3action:(id)sender;
- (IBAction)unitbtn4action:(id)sender;
- (IBAction)unitbtn5action:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *submitbtn;
- (IBAction)submitaction:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *item_table1;
@property (strong, nonatomic) IBOutlet UITableView *item_table2;
@property (strong, nonatomic) IBOutlet UITableView *item_table3;
@property (strong, nonatomic) IBOutlet UITableView *item_table4;
@property (strong, nonatomic) IBOutlet UITableView *item_table5;


@property (strong, nonatomic) IBOutlet UITableView *unit_table1;
@property (strong, nonatomic) IBOutlet UITableView *unit_table2;
@property (strong, nonatomic) IBOutlet UITableView *unit_table3;
@property (strong, nonatomic) IBOutlet UITableView *unit_table4;
@property (strong, nonatomic) IBOutlet UITableView *unit_table5;


@end
