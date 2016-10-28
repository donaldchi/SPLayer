//
//  DetailViewController.h
//  SPlayer
//
//  Created by chi on 2016/10/18.
//  Copyright © 2016年 chi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "Define.h"

@interface DetailViewController : UIViewController {
    
}

@property int selectedID;
@property (strong, nonatomic) NSDate *detailItem;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

