#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#import "CoreSimulator.h"
#import "DVTiPhoneSimulatorRemoteClient.h"

#import "KZRMethodSwizzlingWithBlock.h"
#import "sniffer.h"


@implementation Sniffer

+(void)load
{
    NSLog(@"+[Sniffer load] was called");

    //
    // DTiPhoneSimulatorSessionConfig
    //

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

    //
    // DTiPhoneSimulatorSession
    //

    // @property
    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "setTimeoutTimer:",
       void, call_super, sel)
    ^(id slf, NSTimer *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession setTimeoutTimer: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "setSessionLifecycleProgress:",
       void, call_super, sel)
    ^(id slf, long long arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession setSessionLifecycleProgress: arg1 = %lld", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "setSessionConfig:",
       void, call_super, sel)
    ^(id slf, DTiPhoneSimulatorSessionConfig *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession setSessionConfig: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "setUuid:",
       void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession setUuid: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "setSimulatedAppPath:",
       void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession setSimulatedAppPath: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "setSimulatedApplicationPID:",
       void, call_super, sel)
    ^(id slf, int arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession setSimulatedApplicationPID: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;


    // method
    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "backgroundAllApps:",
       void, call_super, sel)
    ^(id slf, int arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession backgroundAllApps: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "attachedToTargetWithConfig:error:",
       void, call_super, sel)
    ^(id slf, id arg1, id arg2)
    {
        NSLog(@"DTiPhoneSimulatorSession attachedToTargetWithConfig:error: arg1 = %@, arg2 = %@", arg1, arg2);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "stopLocationSimulation",
       void, call_super, sel)
    ^(id slf)
    {
        NSLog(@"DTiPhoneSimulatorSession stopLocationSimulation");
        call_super(slf, sel);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "simulateLocationWithLatitude:longitude:",
       void, call_super, sel)
    ^(id slf, id arg1, id arg2)
    {
        NSLog(@"DTiPhoneSimulatorSession simulateLocationWithLatitude:longitude: arg1 = %@, arg2 = %@", arg1, arg2);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "requestEndWithTimeout:",
       void, call_super, sel)
    ^(id slf, double arg1)
    {
        NSLog(@"DTiPhoneSimulatorSession requestEndWithTimeout: arg1 = %f", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    //
    // DVTiPhoneSimulatorMessenger
    //
    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "startSimulatorSessionWithRequestInfo:",
       void, call_super, sel)
    ^(id slf, id arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger startSimulatorSessionWithRequestInfo: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

}

@end
