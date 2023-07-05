#import "AppDelegate.h"
#import "PlayerViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[PlayerViewController alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
