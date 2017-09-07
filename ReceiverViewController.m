//
//  ReceiverViewController.m
//  Construct_Skills
//
//  Created by Akshita on 01/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "ReceiverViewController.h"
#import "SWRevealViewController.h"

@interface ReceiverViewController ()

@end

@implementation ReceiverViewController
@synthesize request_num,jsonarray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _menubtn.target = self.revealViewController;
    _menubtn.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [self retriveData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) retriveData;
{
    NSError *error;
    NSString *url_string = [NSString stringWithFormat:@"http://anantsoftcomputing.com/ConstructSkills/recv_request_num.php?format=json&request_num=%@",request_num];
    
    
    NSURL *url = [NSURL URLWithString:url_string];
    NSString *result = [NSString stringWithContentsOfURL:url
                                                encoding:NSASCIIStringEncoding
                                                   error:&error];
    NSLog(@"result: %@ \n Error: %@", result, error);
    
    NSData *rawData = [result dataUsingEncoding:NSASCIIStringEncoding];
    NSArray *data = [NSJSONSerialization JSONObjectWithData:rawData
                                                    options: kNilOptions
                                                      error:&error];
    _itemname = [[data objectAtIndex:0]valueForKey:@"item_name"];
    _ReqQty = [[data objectAtIndex:0]valueForKey:@"quantity_req"];
    _ItmUnits = [[data objectAtIndex:0]valueForKey:@"units"];
    _SiteFrom = [[data objectAtIndex:0]valueForKey:@"site_from"];
    _SiteTo = [[data objectAtIndex:0]valueForKey:@"site_to"];
    _ReqDate = [[data objectAtIndex:0]valueForKey:@"date"];
     _Challan_No = [[data objectAtIndex:0]valueForKey:@"challan_no"];
     _Driver_Name = [[data objectAtIndex:0]valueForKey:@"driver_name"];
     _Vehicle_No = [[data objectAtIndex:0]valueForKey:@"vehicle_no"];
    _SentQty = [[data objectAtIndex:0]valueForKey:@"quantity_sent"];
    
    
    _item1.text = _itemname;
    _qty_req1.text = _ReqQty;
    _unit1.text = _ItmUnits;
    _site_from.text = _SiteFrom;
    _site_to.text = _SiteTo;
    _date.text = _ReqDate;
    _qty_recv1.text = _SentQty;
    _challan_no.text = _Challan_No;
    _driver_name.text = _Driver_Name;
    _vehicle_no.text = _Vehicle_No;

}

-(IBAction)submitaction:(id)sender
{
    NSError *error;
    NSString *url_string = [NSString stringWithFormat:@"http://anantsoftcomputing.com/ConstructSkills/receiver.php?format=json&itemid=121457&itemname=%@&ReqQty=%@&ItmUnits=%@&SiteFrom=%@&SiteTo=%@&ReqDate=%@&Challan_No=%@&Driver_Name=%@&Vehicle_No=%@&RecvQty=%@&request_num=%@",_item1.text,_qty_req1.text,_unit1.text,_site_from.text,_site_to.text,_date.text,_challan_no.text,_driver_name.text,_vehicle_no.text,_qty_recv1.text,request_num];
    NSLog(@"%@",url_string);
    NSData *data1 = [NSData dataWithContentsOfURL:[NSURL URLWithString:url_string]];
    jsonarray = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:&error];
    
    NSLog(@"json data are: %@",jsonarray);
}

@end
