#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#import "CoreSimulator.h"
#import "DVTiPhoneSimulatorRemoteClient.h"

#import "KZRMethodSwizzlingWithBlock.h"
#import "sniffer.h"

void swizzling_DTiPhoneSimulatorApplicationSpecifier(void);
void swizzling_DTiPhoneSimulatorSessionConfig(void);
void swizzling_DTiPhoneSimulatorSession(void);
void swizzling_DVTiPhoneSimulatorMessenger(void);

@implementation Sniffer

+(void)load
{
    NSLog(@"+[Sniffer load] was called");


    //
    // DTiPhoneSimulatorApplicationSpecifier
    //
    swizzling_DTiPhoneSimulatorApplicationSpecifier();

    //
    // DTiPhoneSimulatorSessionConfig
    //
    swizzling_DTiPhoneSimulatorSessionConfig();

    //
    // DTiPhoneSimulatorSession
    //
    swizzling_DTiPhoneSimulatorSession();

    //
    // DVTiPhoneSimulatorMessenger
    //
    //swizzling_DVTiPhoneSimulatorMessenger();
}

@end
