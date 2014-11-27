#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#import "CoreSimulator.h"
#import "DVTiPhoneSimulatorRemoteClient.h"

#import "KZRMethodSwizzlingWithBlock.h"

void swizzling_DTiPhoneSimulatorSession(void)
{
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
       BOOL, call_super, sel)
    ^(id slf, id arg1, id *arg2)
    {
        NSLog(@"DTiPhoneSimulatorSession attachedToTargetWithConfig:error: arg1 = %@", arg1);
        return call_super(slf, sel, arg1);
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
    
    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorSession", "requestStartWithConfig:timeout:error:",
       BOOL, call_super, sel)
    ^(id slf, id arg1, double arg2, id *arg3)
    {
        NSLog(@"DTiPhoneSimulatorSession requestStartWithConfig:timeout:error: arg1 = %@, arg2 = %f", arg1, arg2);
        return call_super(slf, sel, arg1, arg2, arg3);
    }_WITHBLOCK;
}