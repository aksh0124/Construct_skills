//
//  RequestPage.m
//  Construct_Skills
//
//  Created by Akshita on 04/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "RequestPage.h"

#import "SenderViewController.h"

@interface RequestPage ()
{
     SenderViewController *svc;
}

@end

@implementation RequestPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _menubtn.target = self.revealViewController;
    _menubtn.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"request_sendersegue"])
    {
        svc = [segue destinationViewController];
        svc.request_num =  _request_num11.text;
    
        NSLog(@"%@", svc.request_num);
    }
}
@end
