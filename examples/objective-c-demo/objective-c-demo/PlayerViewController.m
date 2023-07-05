#import "PlayerViewController.h"

@interface PlayerViewController (){
    AVPlayer *_avplayer;
    AVPlayerViewController *_avplayerController;
    MLYAVPlayerPlugin *_plugin;
}
@end

@implementation PlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    
    _plugin = [[MLYAVPlayerPlugin alloc] init];
    NSError *error = nil;
    
    [MLYDriver initializeAndReturnError:  &error :^(MLYDriverOptions * option) {
        [[option client] setId: @"cegh8d9j11u91ba1u600"];
        
        [_plugin adapt:_avplayerController];
    }];
    
    if(error != nil){
        NSLog(@"MLYDriver initialize err:%@",error.description);
    }
    NSURL *url = [NSURL URLWithString:@"https://vsp-stream.s3.ap-northeast-1.amazonaws.com/HLS/raw/SpaceX.m3u8"];
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
    [_avplayer replaceCurrentItemWithPlayerItem:item];
    [_avplayer play];
}

- (void)setupUI {
    _avplayer = [[AVPlayer alloc] init];
    _avplayerController = [AVPlayerViewController new];
    _avplayerController.showsPlaybackControls = true;
    _avplayerController.view.backgroundColor = UIColor.darkGrayColor;
    _avplayerController.player = _avplayer;
    
    [self addChildViewController:_avplayerController];
    [[self view] addSubview:_avplayerController.view];
}
  
@end
