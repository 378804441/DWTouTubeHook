#include <AVFoundation/AVFoundation.h>
#include <UIKit/UIKit.h>



%hook YTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	%orig;

	// 开启后台播放能力
	AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
    [audioSession setActive:YES error:nil];

	return true;
}

%end


%hook YTLocalPlaybackController

// 兜兜转转，跟了半天。最终的核心方法就是这个方法了😂😂😂 哈哈哈哈哈
- (void)stopBackgroundPlayback{}

%end





