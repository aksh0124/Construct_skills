//
//  SenderViewController.m
//  Construct_Skills
//
//  Created by Akshita on 01/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "SenderViewController.h"
#import "SWRevealViewController.h"


@interface SenderViewController ()
{
    ViewController *vc;
}

@end

@implementation SenderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _menubtn.target = self.revealViewController;
    _menubtn.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
  //  self.item_table1.dataSource = self;
 //   self.item_table1.delegate = self;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)dismissKeyboard
{
    [_challan_no resignFirstResponder];
    [_date resignFirstResponder];
    [_site_from resignFirstResponder];
    [_site_to resignFirstResponder];
    [_driver_name resignFirstResponder];
    [_vehicle_no resignFirstResponder];
}

- (IBAction)submitaction:(id)sender
{
    
}

- (IBAction)dropbtn1action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _item_table1.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _item_table1.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)dropbtn2action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _item_table2.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _item_table2.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)dropbtn3ction:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _item_table3.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _item_table3.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)dropbtn4action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _item_table4.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _item_table4.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)dropbtn5action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _item_table5.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _item_table5.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)unitbtn1action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _unit_table1.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _unit_table1.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)unitbtn2action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _unit_table2.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _unit_table2.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)unitbtn3action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _unit_table3.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _unit_table3.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)unitbtn4action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _unit_table4.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _unit_table4.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)unitbtn5action:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _unit_table5.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _unit_table5.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = @"";
    return cell;
}
@end
