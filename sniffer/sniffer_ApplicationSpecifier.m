#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#import "CoreSimulator.h"
#import "DVTiPhoneSimulatorRemoteClient.h"

#import "KZRMethodSwizzlingWithBlock.h"

void swizzling_DTiPhoneSimulatorApplicationSpecifier(void)
{
    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorApplicationSpecifier", "+specifierWithToolPath:",
       id, call_super, sel)
    ^id (id slf, id arg1)
    {
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier specifierWithToolPath: arg1 = %@", arg1);
        id ret = call_super(slf, sel, arg1);
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier return = %@", ret);
        return ret;
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorApplicationSpecifier", "+specifierWithApplicationBundleIdentifier:",
       id, call_super, sel)
    ^id (id slf, id arg1)
    {
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier specifierWithApplicationBundleIdentifier: arg1 = %@", arg1);
        id ret = call_super(slf, sel, arg1);
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier return = %@", ret);
        return ret;
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorApplicationSpecifier", "+specifierWithApplicationPath:",
       id, call_super, sel)
    ^id (id slf, id arg1)
    {
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier specifierWithApplicationPath: arg1 = %@", arg1);
        id ret = call_super(slf, sel, arg1);
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier return = %@", ret);
        return ret;
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorApplicationSpecifier", "setToolPath:",
       void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier setToolPath: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorApplicationSpecifier", "setBundleID:",
       void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier setBundleID: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;

    KZRMETHOD_SWIZZLING_("DTiPhoneSimulatorApplicationSpecifier", "setAppPath:",
       void, call_super, sel)
    ^(id slf, NSString *arg1)
    {
        NSLog(@"DTiPhoneSimulatorApplicationSpecifier setAppPath: arg1 = %@", arg1);
        call_super(slf, sel, arg1);
    }_WITHBLOCK;
}