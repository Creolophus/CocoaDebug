//
//  _NSLogHook.m
//  Example_Swift
//
//  Created by man.li on 7/26/19.
//  Copyright © 2020 man.li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "_OCLogHelper.h"
#import "_fishhook.h"
#import "RCTLog.h"

@interface _NSLogHook : NSObject

@end

@implementation _NSLogHook

static void (*_original_nslog)(NSString *format, ...);



void cocoadebug_nslog(NSString *format, ...) {
    
    //avoid crash
    if (![format isKindOfClass:[NSString class]]) {
        return;
    }
    
    //
    va_list vl;
    va_start(vl, format);
    NSString *str = [[NSString alloc] initWithFormat:format arguments:vl];
    
    //
    _original_nslog(str);
    
    //
    [_OCLogHelper.shared handleLogWithFile:@"" function:@"" line:999999999 message:str color:[UIColor whiteColor] type:CocoaDebugToolTypeNone];

    va_end(vl);
}



+ (void)load {
    
    //nslog
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"disableLogMonitoring_CocoaDebug"]) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            struct rcd_rebinding nslog_rebinding = {"NSLog",cocoadebug_nslog,(void*)&_original_nslog};
            rcd_rebind_symbols((struct rcd_rebinding[1]){nslog_rebinding}, 1);
        });
    }
    
    
    //RN
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"disableRNMonitoring_CocoaDebug"]) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            RCTSetLogFunction(^(RCTLogLevel level, RCTLogSource source, NSString *fileName, NSNumber *lineNumber, NSString *message) {
                if ([message isKindOfClass:[NSString class]]) {

                    //1.
                    NSString *levelStr = @"";
                    switch (level) {
                        case RCTLogLevelTrace:
                            levelStr = @"[Trace]";
                            break;
                         case RCTLogLevelInfo:
                            levelStr = @"[Info]";
                            break;
                        case RCTLogLevelWarning:
                            levelStr = @"[Warning]";
                            break;
                        case RCTLogLevelError:
                            levelStr = @"[Error]";
                            break;
                        case RCTLogLevelFatal:
                            levelStr = @"[Fatal]";
                            break;
                        default:
                            break;
                    }
                    
                    //2.
                    if (source == RCTLogSourceJavaScript)
                    {
                        //`RCTLogSourceJavaScript`
                        [_OCLogHelper.shared handleLogWithFile:[NSString stringWithFormat:@"%@%@", (fileName ?: @""), levelStr] function:@"" line:[lineNumber integerValue] message:message color:[UIColor whiteColor] type:CocoaDebugToolTypeRN];
                    }
                    else
                    {
                        //`RCTLogSourceNative` or unknow, use `NSLog`
                        [_OCLogHelper.shared handleLogWithFile:[NSString stringWithFormat:@"%@%@", (fileName ?: @""), levelStr] function:@"" line:[lineNumber integerValue] message:message color:[UIColor systemRedColor] type:CocoaDebugToolTypeNone];
                    }
                }
            });
        });
    }
}

@end
