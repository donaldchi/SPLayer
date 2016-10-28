//
//  DetailViewController.m
//  SPlayer
//
//  Created by chi on 2016/10/18.
//  Copyright © 2016年 chi. All rights reserved.
//

#import "DetailViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *strs[] = {@"http://92.249.129.152/stream/1music.m3u8",
        @"http://185.5.40.103/hls/session-16380848dTYOgWLKspKrCYlz/CH_RUSSIATODAY/bw3378000/variant.m3u8?version=3",
        @"http://54.201.252.209/media/index.m3u8", @"http://192.168.179.4:8081/korea/tvchosun/playlist.m3u8"};
    
//    NSLog(@"selsectedID: %@", strs[self->_selectedID]);
//    
    NSURL *movieURL = [NSURL URLWithString:strs[self->_selectedID]];
//    AVPlayer *avPlayer = [AVPlayer playerWithURL:movieURL];
//    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
//    controller.player = avPlayer;
//    controller.view.frame = CGRectMake(0, 0, self.view.bounds.size.width,self.view.bounds.size.height);
//    [self addChildViewController:controller]; // 最大画面になった時、これが使用される感じ
//    [self.view addSubview:controller.view];
//    [avPlayer play]; //再生
    //mpplayer
    MPMoviePlayerController *player;
    player = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    player.movieSourceType = MPMovieSourceTypeStreaming;
    player.repeatMode = MPMovieRepeatModeOne;
    player.shouldAutoplay = NO;
    player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    player.view.frame = CGRectMake(0, 0, self.view.bounds.size.width,self.view.bounds.size.height);
//    self->player.view.frame = CGRectMake(100, 100, 300, 300);
    [self.view addSubview:player.view];
    [player play];
    
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(NSDate *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

@end
