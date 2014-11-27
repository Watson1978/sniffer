#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#import "CoreSimulator.h"
#import "DVTiPhoneSimulatorRemoteClient.h"

#import "KZRMethodSwizzlingWithBlock.h"

void swizzling_DTiPhoneSimulatorSessionConfig(void)
{
    // @property
    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedDisplayScale:",
        void, call_super, sel)
    ^(id slf, NSNumber *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedDisplayScale: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setHimulatedDisplayHeight:",
        void, call_super, sel)
    ^(id slf, NSNumber *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setHimulatedDisplayHeight: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedDeviceFamily:",
        void, call_super, sel)
    ^(id slf, NSNumber *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedDeviceFamily: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setLocalizedClientName:",
        void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setLocalizedClientName: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setLaunchForBackgroundFetch:",
        void, call_super, sel)
    ^(id slf, BOOL arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setLaunchForBackgroundFetch: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setStderrFileHandle:",
        void, call_super, sel)
    ^(id slf, NSFileHandle *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setStderrFileHandle: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setStdoutFileHandle:",
        void, call_super, sel)
    ^(id slf, NSFileHandle *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setStdoutFileHandle: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setStdinFileHandle:",
        void, call_super, sel)
    ^(id slf, NSFileHandle *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setStdinFileHandle: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedApplicationStdErrPath:",
        void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedApplicationStdErrPath: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedApplicationStdOutPath:",
        void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedApplicationStdOutPath: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedApplicationShouldWaitForDebugger:",
        void, call_super, sel)
    ^(id slf, BOOL arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedApplicationShouldWaitForDebugger: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedApplicationLaunchEnvironment:",
        void, call_super, sel)
    ^(id slf, NSDictionary *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedApplicationLaunchEnvironment: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedApplicationLaunchArgs:",
        void, call_super, sel)
    ^(id slf, NSArray *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedApplicationLaunchArgs: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setPid:",
        void, call_super, sel)
    ^(id slf, NSNumber *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setPid: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setShouldInstallApplicationToSimulate:",
        void, call_super, sel)
    ^(id slf, BOOL arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setShouldInstallApplicationToSimulate: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setApplicationToSimulateOnStart:",
        void, call_super, sel)
    ^(id slf, DTiPhoneSimulatorApplicationSpecifier *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setApplicationToSimulateOnStart: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedArchitecture:",
        void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedArchitecture: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setRuntime:",
        void, call_super, sel)
    ^(id slf, SimRuntime *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setRuntime: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setSimulatedSystemRoot:",
        void, call_super, sel)
    ^(id slf, DTiPhoneSimulatorSystemRoot *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setSimulatedSystemRoot: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSessionConfig", "setDevice:",
        void, call_super, sel)
    ^(id slf, SimDevice *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSessionConfig setDevice: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;	
}