#line 1 "Tweak.x"
#include <AVFoundation/AVFoundation.h>
#include <UIKit/UIKit.h>




#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class YTLocalPlaybackController; @class YTAppDelegate; 
static BOOL (*_logos_orig$_ungrouped$YTAppDelegate$application$didFinishLaunchingWithOptions$)(_LOGOS_SELF_TYPE_NORMAL YTAppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *, NSDictionary *); static BOOL _logos_method$_ungrouped$YTAppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL YTAppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *, NSDictionary *); static void (*_logos_orig$_ungrouped$YTLocalPlaybackController$stopBackgroundPlayback)(_LOGOS_SELF_TYPE_NORMAL YTLocalPlaybackController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTLocalPlaybackController$stopBackgroundPlayback(_LOGOS_SELF_TYPE_NORMAL YTLocalPlaybackController* _LOGOS_SELF_CONST, SEL); 

#line 6 "Tweak.x"


static BOOL _logos_method$_ungrouped$YTAppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL YTAppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application, NSDictionary * launchOptions) {
	_logos_orig$_ungrouped$YTAppDelegate$application$didFinishLaunchingWithOptions$(self, _cmd, application, launchOptions);

	AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
    [audioSession setActive:YES error:nil];

	return true;
}






static void _logos_method$_ungrouped$YTLocalPlaybackController$stopBackgroundPlayback(_LOGOS_SELF_TYPE_NORMAL YTLocalPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){}







static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$YTAppDelegate = objc_getClass("YTAppDelegate"); { MSHookMessageEx(_logos_class$_ungrouped$YTAppDelegate, @selector(application:didFinishLaunchingWithOptions:), (IMP)&_logos_method$_ungrouped$YTAppDelegate$application$didFinishLaunchingWithOptions$, (IMP*)&_logos_orig$_ungrouped$YTAppDelegate$application$didFinishLaunchingWithOptions$);}Class _logos_class$_ungrouped$YTLocalPlaybackController = objc_getClass("YTLocalPlaybackController"); { MSHookMessageEx(_logos_class$_ungrouped$YTLocalPlaybackController, @selector(stopBackgroundPlayback), (IMP)&_logos_method$_ungrouped$YTLocalPlaybackController$stopBackgroundPlayback, (IMP*)&_logos_orig$_ungrouped$YTLocalPlaybackController$stopBackgroundPlayback);}} }
#line 31 "Tweak.x"
