//
//  RequireViewController.m
//  Construct_Skills
//
//  Created by Akshita on 02/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "RequireViewController.h"


@interface RequireViewController ()

@end

@implementation RequireViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _menubtn.target = self.revealViewController;
    _menubtn.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
 
    
    _itemarray = [[NSArray alloc]initWithObjects:@"Bricks", @"Cement", @"Concrete", @"Iron Rods", @"Iron Sheets", @"Pipes", @"Sand", @"Steel",  @"Taps",@"Tiles", @"Wooden Blocks", nil];
    _unitarray = [[NSArray alloc]initWithObjects:@"Pcs", @"Sq.m", @"Sq.foot", @"Ton", @"Kg", nil];
    
 /*   UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
  */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == _item_table1)
    {
        return _itemarray.count;
    }
    if(tableView == _item_table2)
    {
        return _itemarray.count;
    }
    if(tableView == _item_table3)
    {
        return _itemarray.count;
    }
    if(tableView == _item_table4)
    {
        return _itemarray.count;
    }
    if(tableView == _item_table5)
    {
        return _itemarray.count;
    }
    if(tableView == _unit_table1)
    {
        return _unitarray.count;
    }
    if(tableView == _unit_table2)
    {
        return _unitarray.count;
    }
    if(tableView == _unit_table3)
    {
        return _unitarray.count;
    }
    if(tableView == _unit_table4)
    {
        return _unitarray.count;
    }
    if(tableView == _unit_table5)
    {
        return _unitarray.count;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 //   UIFont *myFont = [ UIFont fontWithName:@"System" size:12];
   
    if(tableView == _item_table1)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
     
        cell.textLabel.text = self.itemarray[indexPath.row];
        
    }
    if(tableView == _item_table2)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.itemarray[indexPath.row];
    }
    if(tableView == _item_table3)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.itemarray[indexPath.row];
    }
    if(tableView == _item_table4)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.itemarray[indexPath.row];
    }
    if(tableView == _item_table5)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.itemarray[indexPath.row];
    }
    if(tableView == _unit_table1)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.unitarray[indexPath.row];
    }
    if(tableView == _unit_table2)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.unitarray[indexPath.row];
    }
    if(tableView == _unit_table3)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.unitarray[indexPath.row];
    }
    if(tableView == _unit_table4)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.unitarray[indexPath.row];
    }
    if(tableView == _unit_table5)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.unitarray[indexPath.row];
    }
    
     cell.textLabel.font = [cell.textLabel.font fontWithSize:11];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(tableView == self.item_table1)
    {
        [self.item1 setText:[self.itemarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.item_table2)
    {
        [self.item2 setText:[self.itemarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.item_table3)
    {
        [self.item3 setText:[self.itemarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.item_table4)
    {
        [self.item4 setText:[self.itemarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.item_table5)
    {
        [self.item5 setText:[self.itemarray objectAtIndex:indexPath.row]];
    }
    
    
    if(tableView == self.unit_table1)
    {
        [self.unit1 setText:[self.unitarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.unit_table2)
    {
        [self.unit2 setText:[self.unitarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.unit_table3)
    {
        [self.unit3 setText:[self.unitarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.unit_table4)
    {
        [self.unit4 setText:[self.unitarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.unit_table5)
    {
        [self.unit5 setText:[self.unitarray objectAtIndex:indexPath.row]];
    }
    
}
/*
-(void)dismissKeyboard
{

    [_date resignFirstResponder];
    [_site_from resignFirstResponder];
    [_site_to resignFirstResponder];
    [_qty_req1 resignFirstResponder];
  
}*/

- (IBAction)submitaction:(id)sender
{
    
/*    NSMutableArray *userinfoArray = [[NSMutableArray alloc]init];
    NSString *tempString = [[NSString alloc]initWithString:[_item1 text]];
    [userinfoArray addObject:tempString];*/
    
    NSError *error;
    NSString *url_string = [NSString stringWithFormat:@"http://anantsoftcomputing.com/ConstructSkills/requestform.php?format=json&itemid=120&itemname=%@&ReqQty=%@&ItmUnits=%@&SiteFrom=%@&SiteTo=%@&ReqDate=%@",_item1.text,_qty_req1.text,_unit1.text,_site_from.text,_site_to.text,_date.text];
    NSLog(@"%@",url_string);
    NSData *data1 = [NSData dataWithContentsOfURL:[NSURL URLWithString:url_string]];
 NSMutableArray   *jsonarray = [NSJSONSerialization JSONObjectWithData:data1 options:kNilOptions error:&error];
    
    NSLog(@"json data are: %@",jsonarray);
    
 //   _Req_id = [[jsonarray objectAtIndex:0]valueForKey:@"ReqId"];
 //   NSLog(@"%@",_Req_id);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Request Successfully submitted" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    
    
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



@end
