//
//  ReceiverViewController.h
//  Construct_Skills
//
//  Created by Akshita on 01/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceiverViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIBarButtonItem *menubtn;

@property (nonatomic, strong) NSMutableArray *jsonarray;

@property NSString *request_num;

-(void) retriveData;

@property (strong, nonatomic) IBOutlet UITextField *challan_no;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UITextField *site_from;
@property (strong, nonatomic) IBOutlet UITextField *site_to;
@property (strong, nonatomic) IBOutlet UITextField *driver_name;
@property (strong, nonatomic) IBOutlet UITextField *vehicle_no;

@property (strong, nonatomic) IBOutlet UILabel *item1;
@property (strong, nonatomic) IBOutlet UILabel *item2;
@property (strong, nonatomic) IBOutlet UILabel *item3;
@property (strong, nonatomic) IBOutlet UILabel *item4;
@property (strong, nonatomic) IBOutlet UILabel *item5;

@property (strong, nonatomic) IBOutlet UITextField *qty_req1;
@property (strong, nonatomic) IBOutlet UITextField *qty_req2;
@property (strong, nonatomic) IBOutlet UITextField *qty_req3;
@property (strong, nonatomic) IBOutlet UITextField *qty_req4;
@property (strong, nonatomic) IBOutlet UITextField *qty_req5;

@property (strong, nonatomic) IBOutlet UITextField *qty_recv1;
@property (strong, nonatomic) IBOutlet UITextField *qty_recv2;
@property (strong, nonatomic) IBOutlet UITextField *qty_recv3;
@property (strong, nonatomic) IBOutlet UITextField *qty_recv4;
@property (strong, nonatomic) IBOutlet UITextField *qty_recv5;

@property (strong, nonatomic) IBOutlet UILabel *unit1;
@property (strong, nonatomic) IBOutlet UILabel *unit2;
@property (strong, nonatomic) IBOutlet UILabel *unit3;
@property (strong, nonatomic) IBOutlet UILabel *unit4;
@property (strong, nonatomic) IBOutlet UILabel *unit5;

@property (strong, nonatomic) IBOutlet UIButton *submitbtn;
- (IBAction)submitaction:(id)sender;

@property NSString *itemname;
@property NSString *ReqQty;
@property NSString *ItmUnits;
@property NSString *SiteFrom;
@property NSString *SiteTo;
@property NSString *ReqDate;
@property NSString *SentQty;
@property NSString *Challan_No;
@property NSString *Driver_Name;
@property NSString *Vehicle_No;

@end
