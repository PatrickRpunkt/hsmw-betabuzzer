//
//  BuzzerViewController.m
//  BETA-Buzzer
//
//  Created by Patrick Reichelt on 17/12/14.
//  Copyright (c) 2014 Patrick Reichelt. All rights reserved.
//


#import "BuzzerViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface BuzzerViewController ()
@property (nonatomic) AVAudioPlayer *audioPlayer;
@end


@implementation BuzzerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path = [NSString stringWithFormat:@"%@/yoshi_%@.mp3", [[NSBundle mainBundle] resourcePath], _TeamId];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];

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

- (IBAction)buzzerPressed:(id)sender {
    [_audioPlayer play];
}



@end
