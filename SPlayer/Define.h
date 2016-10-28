//
//  Define.h
//  SPlayer
//
//  Created by chi on 2016/10/18.
//  Copyright © 2016年 chi. All rights reserved.
//

//画面サイズ取得マクロ
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

//    NSURL *movieURL = [NSURL URLWithString:@"http://92.249.129.152/stream/1music.m3u8"];
//    //http://edge2.everyon.tv/etv2sb/phd1042/chunklist_w312619350.m3u8
//    //ytn http://slive.sciencetv.kr:1935/science/yslive_20140419_1/chunklist_w2065795695.m3u8
//    //music channnel: http://92.249.129.152/stream/1music.m3u8
#define MUSIC @"http://92.249.129.152/stream/1music.m3u8";
#define RUSSIA @"http://185.5.40.103/hls/session-16380848dTYOgWLKspKrCYlz/CH_RUSSIATODAY/bw3378000/variant.m3u8?version=3";
#define ENGLISH @"http://54.201.252.209/media/index.m3u8";
