//
//  TeamSelectorViewController.m
//  BETA-Buzzer
//
//  Created by Patrick Reichelt on 13/01/15.
//  Copyright (c) 2015 Patrick Reichelt. All rights reserved.
//

#import "TeamSelectorViewController.h"
#import "BuzzerViewController.h"
@interface TeamSelectorViewController ()
@property  (nonatomic) NSString* TeamId;
@end

@implementation TeamSelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BOOL b = true;
    
    while (b) {
        NSString *a = @"";
    }
    
    
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


- (IBAction)teamSelected:(UIButton*)sender {
    self.TeamId = [NSString stringWithFormat:@"%li",(long)sender.tag];
    [self performSegueWithIdentifier:@"buzzerSegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"buzzerSegue"]){
        BuzzerViewController *vc = segue.destinationViewController;
        vc.TeamId = self.TeamId;
    }
}

@end
