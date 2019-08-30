#import "AddPlugin.h"
#import <AddFramework/Add.h>

@implementation AddPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"add"
            binaryMessenger:[registrar messenger]];
  AddPlugin* instance = [[AddPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
} 

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"add" isEqualToString:call.method]) {
    result(AddAdd(2, 2));
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
