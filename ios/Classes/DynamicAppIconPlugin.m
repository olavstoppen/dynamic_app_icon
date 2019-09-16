#import "DynamicAppIconPlugin.h"
#import <dynamic_app_icon/dynamic_app_icon-Swift.h>

@implementation DynamicAppIconPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDynamicAppIconPlugin registerWithRegistrar:registrar];
}
@end
