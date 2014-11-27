#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#import "CoreSimulator.h"
#import "DVTiPhoneSimulatorRemoteClient.h"

#import "KZRMethodSwizzlingWithBlock.h"

void swizzling_DVTiPhoneSimulatorMessenger(void)
{
    // method
    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "doFetchEventForPID:",
       void, call_super, sel)
    ^(id slf, int arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger doFetchEventForPID: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "backgroundAllApps:",
       void, call_super, sel)
    ^(id slf, int arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger backgroundAllApps: arg1 = %d", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "startSimulatorToolSessionWithParameters:",
       void, call_super, sel)
    ^(id slf, id arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger startSimulatorToolSessionWithParameters: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "didReceiveSimulatorRunningNote:",
       void, call_super, sel)
    ^(id slf, id arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger didReceiveSimulatorRunningNote: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;
        
    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "didReceiveSimulatorReadyNote:",
       void, call_super, sel)
    ^(id slf, id arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger didReceiveSimulatorReadyNote: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "stopSimulatingLocation",
       void, call_super, sel)
    ^(id slf)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger stopSimulatingLocation");
        call_super(slf, sel);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "startSimulatingLocationWithLatitude:longitute:",
       void, call_super, sel)
    ^(id slf, id arg1, id arg2)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger startSimulatingLocationWithLatitude:longitute: arg1 = %@, arg2 = %@", arg1, arg2);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "endSimulatorSessionWithPID:",
       void, call_super, sel)
    ^(id slf, id arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger endSimulatorSessionWithPID: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "startSimulatorSessionWithRequestInfo:",
       void, call_super, sel)
    ^(id slf, id arg1)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger startSimulatorSessionWithRequestInfo: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    // KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "spawnToolWithConfig:",
    //    id, call_super, sel)
    // ^(id slf, id arg1)
    // {
    //     NSLog(@"DVTiPhoneSimulatorMessenger spawnToolWithConfig: arg1 = %@", arg1);
    //     id ret = call_super(slf, sel, arg1);
    //     NSLog(@"DVTiPhoneSimulatorMessenger return = %@", ret);
    //     return ret;
    // }_WITHBLOCK;

    // KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "launchApplicationWithConfig:",
    //    id, call_super, sel)
    // ^(id slf, id arg1)
    // {
    //     NSLog(@"DVTiPhoneSimulatorMessenger launchApplicationWithConfig: arg1 = %@", arg1);
    //     id ret = call_super(slf, sel, arg1);
    //     NSLog(@"DVTiPhoneSimulatorMessenger return = %@", ret);
    //     return ret;
    // }_WITHBLOCK;

    // KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "installApplicationWithConfig:",
    //    id, call_super, sel)
    // ^(id slf, id arg1)
    // {
    //     NSLog(@"DVTiPhoneSimulatorMessenger installApplicationWithConfig: arg1 = %@", arg1);
    //     id ret = call_super(slf, sel, arg1);
    //     NSLog(@"DVTiPhoneSimulatorMessenger return = %@", ret);
    //     return ret;
    // }_WITHBLOCK;

    // KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "clearAllMessageHandlers",
    //    void, call_super, sel)
    // ^(id slf)
    // {
    //     NSLog(@"DVTiPhoneSimulatorMessenger clearAllMessageHandlers");
    //     call_super(slf, sel);
    // }_WITHBLOCK;

    // KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "disconnectFromService",
    //    void, call_super, sel)
    // ^(id slf)
    // {
    //     NSLog(@"DVTiPhoneSimulatorMessenger disconnectFromService");
    //     call_super(slf, sel);
    // }_WITHBLOCK;

    // KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "initWithSession:",
    //    void, call_super, sel)
    // ^(id slf, id arg1)
    // {
    //     NSLog(@"DVTiPhoneSimulatorMessenger initWithSession: arg1 = %@", arg1);
    //     call_super(slf, sel, arg1);
    // }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DVTiPhoneSimulatorMessenger", "primitiveInvalidate",
       void, call_super, sel)
    ^(id slf)
    {
        NSLog(@"DVTiPhoneSimulatorMessenger primitiveInvalidate");
        call_super(slf, sel);
    }_WITHBLOCK;
}
