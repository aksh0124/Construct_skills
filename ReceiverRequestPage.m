//
//  ReceiverRequestPage.m
//  Construct_Skills
//
//  Created by Akshita on 07/09/17.
//  Copyright © 2017 ASC. All rights reserved.
//

#import "ReceiverRequestPage.h"
#import "ReceiverViewController.h"

@interface ReceiverRequestPage ()
{
    ReceiverViewController *rvc;
}

@end

@implementation ReceiverRequestPage

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
if([[segue identifier] isEqualToString:@"request_receiversegue"])
{
    rvc = [segue destinationViewController];
    rvc.request_num = _request_num_id11.text;
    NSLog(@"%@", rvc.request_num);
}
}
@end
