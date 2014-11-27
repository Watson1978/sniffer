//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#pragma mark Function Pointers and Blocks

typedef void (*CDUnknownFunctionPointerType)(void); // return type and parameters are unknown

typedef void (^CDUnknownBlockType)(void); // return type and parameters are unknown

#pragma mark -

//
// File: /Applications/Xcode.app/Contents/Developer/Library/PrivateFrameworks/CoreSimulator.framework/Versions/A/CoreSimulator
// UUID: 3C2AE6EA-1F23-39A4-B316-9120003F75B1
//
//                           Arch: x86_64
//                Current version: 110.4.0
//          Compatibility version: 1.0.0
//                 Source version: 110.4.0.0.0
//       Minimum Mac OS X version: 10.9.0
//                    SDK version: 10.9.0
//
// Objective-C Garbage Collection: Unsupported
//

@protocol SimDeviceNotifier
- (BOOL)unregisterNotificationHandler:(unsigned long long)arg1 error:(id *)arg2;
- (unsigned long long)registerNotificationHandlerOnQueue:(NSObject<OS_dispatch_queue> *)arg1 handler:(void (^)(NSDictionary *))arg2;
- (unsigned long long)registerNotificationHandler:(void (^)(NSDictionary *))arg1;
@end

@interface SimDeviceNotificationManager : NSObject <SimDeviceNotifier>
{
    NSObject<OS_dispatch_queue> *_handlersQueue;
    NSMutableDictionary *_handlers;
    unsigned long long _next_regID;
    NSObject<OS_dispatch_queue> *_sendQueue;
}

@property(retain) NSObject<OS_dispatch_queue> *sendQueue; // @synthesize sendQueue=_sendQueue;
@property unsigned long long next_regID; // @synthesize next_regID=_next_regID;
@property(retain) NSMutableDictionary *handlers; // @synthesize handlers=_handlers;
@property(retain) NSObject<OS_dispatch_queue> *handlersQueue; // @synthesize handlersQueue=_handlersQueue;
- (void)sendNotification:(id)arg1;
- (BOOL)unregisterNotificationHandler:(unsigned long long)arg1 error:(id *)arg2;
- (unsigned long long)registerNotificationHandlerOnQueue:(id)arg1 handler:(CDUnknownBlockType)arg2;
- (unsigned long long)registerNotificationHandler:(CDUnknownBlockType)arg1;
- (void)dealloc;
- (id)init;

@end

@interface SimVerifier : NSObject
{
    NSObject<OS_xpc_object> *_serviceConnection;
    NSObject<OS_dispatch_queue> *_serviceConnectionQueue;
}

+ (id)verificationError:(int)arg1;
+ (id)connectionError;
+ (id)sharedVerifier;
@property(retain) NSObject<OS_dispatch_queue> *serviceConnectionQueue; // @synthesize serviceConnectionQueue=_serviceConnectionQueue;
@property(retain) NSObject<OS_xpc_object> *serviceConnection; // @synthesize serviceConnection=_serviceConnection;
- (id)verifyDyldSim:(id)arg1;
- (id)verifyAll;
- (BOOL)verifyAllWithError:(id *)arg1;
- (void)dealloc;
- (id)init;

@end

@interface SimServiceConnectionManager : NSObject
{
    NSObject<OS_xpc_object> *_serviceConnection;
    NSObject<OS_dispatch_queue> *_serviceConnectionQueue;
    NSDate *_lastConnectionTime;
}

+ (void)useService:(BOOL)arg1;
+ (id)sharedConnectionManager;
@property(retain) NSDate *lastConnectionTime; // @synthesize lastConnectionTime=_lastConnectionTime;
@property(retain) NSObject<OS_dispatch_queue> *serviceConnectionQueue; // @synthesize serviceConnectionQueue=_serviceConnectionQueue;
@property(retain) NSObject<OS_xpc_object> *serviceConnection; // @synthesize serviceConnection=_serviceConnection;
- (void)handleXPCEvent:(id)arg1;
- (void)dealloc;
- (BOOL)connect;
- (id)init;

@end

@interface SimDeviceType : NSObject
{
    float _mainScreenScale;
    unsigned int _minRuntimeVersion;
    unsigned int _maxRuntimeVersion;
    NSString *_name;
    NSString *_identifier;
    NSString *_modelIdentifier;
    NSBundle *_bundle;
    NSArray *_supportedArchs;
    NSArray *_supportedProductFamilyIDs;
    NSDictionary *_capabilities;
    NSString *_springBoardConfigName;
    NSString *_productClass;
    NSDictionary *_environment_extra;
    NSDictionary *_aliases;
    NSDictionary *_supportedFeatures;
    NSDictionary *_supportedFeaturesConditionalOnRuntime;
    struct CGSize _mainScreenSize;
    struct CGSize _mainScreenDPI;
}

+ (id)supportedDeviceTypesByName;
+ (id)supportedDeviceTypesByAlias;
+ (id)supportedDeviceTypesByIdentifier;
+ (id)supportedDeviceTypes;
+ (id)supportedDevices;
@property(copy) NSDictionary *supportedFeaturesConditionalOnRuntime; // @synthesize supportedFeaturesConditionalOnRuntime=_supportedFeaturesConditionalOnRuntime;
@property(copy) NSDictionary *supportedFeatures; // @synthesize supportedFeatures=_supportedFeatures;
@property(copy) NSDictionary *aliases; // @synthesize aliases=_aliases;
@property(copy) NSDictionary *environment_extra; // @synthesize environment_extra=_environment_extra;
@property(copy) NSString *productClass; // @synthesize productClass=_productClass;
@property(copy) NSString *springBoardConfigName; // @synthesize springBoardConfigName=_springBoardConfigName;
@property unsigned int maxRuntimeVersion; // @synthesize maxRuntimeVersion=_maxRuntimeVersion;
@property unsigned int minRuntimeVersion; // @synthesize minRuntimeVersion=_minRuntimeVersion;
@property struct CGSize mainScreenDPI; // @synthesize mainScreenDPI=_mainScreenDPI;
@property struct CGSize mainScreenSize; // @synthesize mainScreenSize=_mainScreenSize;
@property(copy) NSDictionary *capabilities; // @synthesize capabilities=_capabilities;
@property float mainScreenScale; // @synthesize mainScreenScale=_mainScreenScale;
@property(copy) NSArray *supportedProductFamilyIDs; // @synthesize supportedProductFamilyIDs=_supportedProductFamilyIDs;
@property(copy) NSArray *supportedArchs; // @synthesize supportedArchs=_supportedArchs;
@property(retain) NSBundle *bundle; // @synthesize bundle=_bundle;
@property(copy) NSString *modelIdentifier; // @synthesize modelIdentifier=_modelIdentifier;
@property(copy) NSString *identifier; // @synthesize identifier=_identifier;
@property(copy) NSString *name; // @synthesize name=_name;
- (Class)deviceClass;
- (long long)compare:(id)arg1;
- (BOOL)supportsFeatureConditionally:(id)arg1;
- (BOOL)supportsFeature:(id)arg1;
- (id)environmentForRuntime:(id)arg1;
- (id)environment;
@property(readonly, copy) NSString *productFamily;
@property(readonly) int productFamilyID;
- (id)description;
- (void)dealloc;
- (id)initWithBundle:(id)arg1;
- (id)initWithPath:(id)arg1;
- (id)init;

@end

@interface SimRuntime : NSObject
{
    unsigned int _version;
    unsigned int _minHostVersion;
    unsigned int _maxHostVersion;
    NSString *_name;
    NSString *_identifier;
    NSBundle *_bundle;
    NSString *_root;
    NSString *_versionString;
    NSString *_buildVersionString;
    NSDictionary *_supportedFeatures;
    NSDictionary *_supportedFeaturesConditionalOnDeviceType;
    NSDictionary *_requiredHostServices;
    NSString *_platformPath;
    NSArray *_supportedProductFamilyIDs;
    NSDictionary *_environment_extra;
    void *_libLaunchHostHandle;
    NSDictionary *_aliases;
}

+ (id)supportedRuntimesByAlias;
+ (id)supportedRuntimesByIdentifier;
+ (id)supportedRuntimes;
@property unsigned int maxHostVersion; // @synthesize maxHostVersion=_maxHostVersion;
@property unsigned int minHostVersion; // @synthesize minHostVersion=_minHostVersion;
@property(copy) NSDictionary *aliases; // @synthesize aliases=_aliases;
@property(nonatomic) void *libLaunchHostHandle; // @synthesize libLaunchHostHandle=_libLaunchHostHandle;
@property(copy) NSDictionary *environment_extra; // @synthesize environment_extra=_environment_extra;
@property(copy) NSArray *supportedProductFamilyIDs; // @synthesize supportedProductFamilyIDs=_supportedProductFamilyIDs;
@property(copy) NSString *platformPath; // @synthesize platformPath=_platformPath;
@property(copy) NSDictionary *requiredHostServices; // @synthesize requiredHostServices=_requiredHostServices;
@property(copy) NSDictionary *supportedFeaturesConditionalOnDeviceType; // @synthesize supportedFeaturesConditionalOnDeviceType=_supportedFeaturesConditionalOnDeviceType;
@property(copy) NSDictionary *supportedFeatures; // @synthesize supportedFeatures=_supportedFeatures;
@property unsigned int version; // @synthesize version=_version;
@property(copy) NSString *buildVersionString; // @synthesize buildVersionString=_buildVersionString;
@property(copy) NSString *versionString; // @synthesize versionString=_versionString;
@property(copy) NSString *root; // @synthesize root=_root;
@property(retain) NSBundle *bundle; // @synthesize bundle=_bundle;
@property(copy) NSString *identifier; // @synthesize identifier=_identifier;
@property(copy) NSString *name; // @synthesize name=_name;
- (id)platformRuntimeOverlay;
- (CDUnknownFunctionPointerType)launch_sim_set_death_handler;
- (CDUnknownFunctionPointerType)launch_sim_waitpid;
- (CDUnknownFunctionPointerType)launch_sim_spawn;
- (CDUnknownFunctionPointerType)launch_sim_getenv;
- (CDUnknownFunctionPointerType)launch_sim_bind_session_to_port;
- (CDUnknownFunctionPointerType)launch_sim_find_endpoint;
- (CDUnknownFunctionPointerType)launch_sim_register_endpoint;
- (BOOL)isAvailableWithError:(id *)arg1;
@property(readonly) BOOL available;
- (BOOL)verifyRuntime;
- (id)dyld_simPath;
- (BOOL)createInitialContentPath:(id)arg1 error:(id *)arg2;
- (void)createInitialContentPath:(id)arg1;
- (id)sampleContentPath;
- (long long)compare:(id)arg1;
- (BOOL)supportsFeatureConditionally:(id)arg1;
- (BOOL)supportsFeature:(id)arg1;
- (BOOL)supportsDeviceType:(id)arg1;
- (BOOL)supportsDevice:(id)arg1;
- (id)environment;
- (id)description;
- (void)dealloc;
- (id)initWithBundle:(id)arg1;
- (id)initWithPath:(id)arg1;
- (id)init;

@end

@interface SimDeviceSet : NSObject <SimDeviceNotifier>
{
    NSString *_setPath;
    NSObject<OS_dispatch_queue> *_devicesQueue;
    NSMutableDictionary *__devicesByUDID;
    NSMutableDictionary *_devicesNotificationRegIDs;
    SimServiceConnectionManager *_connectionManager;
    SimDeviceNotificationManager *_notificationManager;
}

+ (void)resubscribeAllToNotifications;
+ (id)setForSetPath:(id)arg1;
+ (id)defaultSet;
+ (id)defaultSetPath;
@property(retain) SimDeviceNotificationManager *notificationManager; // @synthesize notificationManager=_notificationManager;
@property(retain) SimServiceConnectionManager *connectionManager; // @synthesize connectionManager=_connectionManager;
@property(retain) NSMutableDictionary *devicesNotificationRegIDs; // @synthesize devicesNotificationRegIDs=_devicesNotificationRegIDs;
@property(retain) NSMutableDictionary *_devicesByUDID; // @synthesize _devicesByUDID=__devicesByUDID;
@property(retain) NSObject<OS_dispatch_queue> *devicesQueue; // @synthesize devicesQueue=_devicesQueue;
@property(copy) NSString *setPath; // @synthesize setPath=_setPath;
- (void)handleXPCRequestDeleteDevice:(id)arg1 peer:(id)arg2 device:(id)arg3;
- (void)handleXPCRequestCreateDevice:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequest:(id)arg1 peer:(id)arg2;
- (void)handleXPCNotificationDeviceRemoved:(id)arg1;
- (void)handleXPCNotificationDeviceAdded:(id)arg1;
- (void)handleXPCNotification:(id)arg1;
- (BOOL)deleteDevice:(id)arg1 error:(id *)arg2;
- (void)deleteDeviceAsync:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (id)createDeviceWithType:(id)arg1 runtime:(id)arg2 name:(id)arg3 error:(id *)arg4;
- (void)createDeviceAsyncWithType:(id)arg1 runtime:(id)arg2 name:(id)arg3 completionHandler:(CDUnknownBlockType)arg4;
- (BOOL)unregisterNotificationHandler:(unsigned long long)arg1 error:(id *)arg2;
- (unsigned long long)registerNotificationHandlerOnQueue:(id)arg1 handler:(CDUnknownBlockType)arg2;
- (unsigned long long)registerNotificationHandler:(CDUnknownBlockType)arg1;
- (void)removeDeviceAsync:(id)arg1;
- (void)addDevice:(id)arg1;
- (void)addDeviceAsync:(id)arg1;
- (void)updateDefaultDevices;
- (id)defaultCreatedPlistPath;
@property(readonly, copy) NSArray *availableDevices;
@property(readonly, copy) NSArray *devices;
@property(readonly, copy) NSDictionary *devicesByUDID;
- (id)description;
- (void)dealloc;
- (id)initWithSetPath:(id)arg1;
- (BOOL)subscribeToNotificationsWithError:(id *)arg1;

@end

@interface SimDevice : NSObject <SimDeviceNotifier>
{
    unsigned long long _state;
    NSString *_name;
    NSDictionary *_uiWindowProperties;
    SimDeviceType *_deviceType;
    SimRuntime *_runtime;
    NSUUID *_UDID;
    SimDeviceSet *_deviceSet;
    SimServiceConnectionManager *_connectionManager;
    NSString *_setPath;
    SimDeviceNotificationManager *_notificationManager;
    NSObject<OS_dispatch_queue> *_bootstrapQueue;
    NSMutableDictionary *_registeredServices;
    NSObject<OS_dispatch_queue> *_stateVariableQueue;
    NSMachPort *_deathTriggerPort;
    NSMachPort *_hostSupportPort;
    NSMachPort *_simBridgePort;
//    NSDistantObject<SimBridge> *_simBridgeDistantObject;
}

+ (id)simDevice:(id)arg1 UDID:(id)arg2 deviceType:(id)arg3 runtime:(id)arg4 state:(unsigned long long)arg5 connectionManager:(id)arg6 setPath:(id)arg7;
+ (id)simDeviceAtPath:(id)arg1;
+ (id)createDeviceWithName:(id)arg1 setPath:(id)arg2 deviceType:(id)arg3 runtime:(id)arg4;
+ (BOOL)isValidState:(unsigned long long)arg1;
//@property(retain, nonatomic) NSDistantObject<SimBridge> *simBridgeDistantObject; // @synthesize simBridgeDistantObject=_simBridgeDistantObject;
@property(retain, nonatomic) NSMachPort *simBridgePort; // @synthesize simBridgePort=_simBridgePort;
@property(retain, nonatomic) NSMachPort *hostSupportPort; // @synthesize hostSupportPort=_hostSupportPort;
@property(retain) NSMachPort *deathTriggerPort; // @synthesize deathTriggerPort=_deathTriggerPort;
@property(retain) NSObject<OS_dispatch_queue> *stateVariableQueue; // @synthesize stateVariableQueue=_stateVariableQueue;
@property(retain) NSMutableDictionary *registeredServices; // @synthesize registeredServices=_registeredServices;
@property(retain) NSObject<OS_dispatch_queue> *bootstrapQueue; // @synthesize bootstrapQueue=_bootstrapQueue;
@property(retain) SimDeviceNotificationManager *notificationManager; // @synthesize notificationManager=_notificationManager;
@property(copy) NSString *setPath; // @synthesize setPath=_setPath;
@property(retain) SimServiceConnectionManager *connectionManager; // @synthesize connectionManager=_connectionManager;
@property(readonly) SimDeviceSet *deviceSet; // @synthesize deviceSet=_deviceSet;
@property(copy) NSUUID *UDID; // @synthesize UDID=_UDID;
@property(retain) SimRuntime *runtime; // @synthesize runtime=_runtime;
@property(retain) SimDeviceType *deviceType; // @synthesize deviceType=_deviceType;
- (BOOL)isAvailableWithError:(id *)arg1;
@property(readonly) BOOL available;
- (BOOL)triggerCloudSyncWithError:(id *)arg1;
- (void)triggerCloudSyncWithCompletionHandler:(CDUnknownBlockType)arg1;
- (BOOL)postDarwinNotification:(id)arg1 error:(id *)arg2;
- (int)launchApplicationWithID:(id)arg1 options:(id)arg2 error:(id *)arg3;
- (void)launchApplicationAsyncWithID:(id)arg1 options:(id)arg2 completionHandler:(CDUnknownBlockType)arg3;
- (id)installedAppsWithError:(id *)arg1;
- (BOOL)applicationIsInstalled:(id)arg1 type:(id *)arg2 error:(id *)arg3;
- (BOOL)uninstallApplication:(id)arg1 withOptions:(id)arg2 error:(id *)arg3;
- (BOOL)installApplication:(id)arg1 withOptions:(id)arg2 error:(id *)arg3;
- (BOOL)setKeyboardLanguage:(id)arg1 error:(id *)arg2;
- (BOOL)addPhoto:(id)arg1 error:(id *)arg2;
- (BOOL)openURL:(id)arg1 error:(id *)arg2;
- (void)simBridgeSync:(CDUnknownBlockType)arg1;
- (void)simBridgeAsync:(CDUnknownBlockType)arg1;
- (void)simBridgeCommon:(CDUnknownBlockType)arg1;
- (long long)compare:(id)arg1;
- (id)newDeviceNotification;
- (id)createXPCNotification:(const char *)arg1;
- (id)createXPCRequest:(const char *)arg1;
- (void)handleXPCRequestSpawn:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestGetenv:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestLookup:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestRegister:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestRestore:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestUpdateUIWindow:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestErase:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestUpgrade:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestShutdown:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestBoot:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequestRename:(id)arg1 peer:(id)arg2;
- (void)handleXPCRequest:(id)arg1 peer:(id)arg2;
- (void)handleXPCNotificationDeviceUIWindowPropertiesChanged:(id)arg1;
- (void)handleXPCNotificationDeviceRenamed:(id)arg1;
- (void)handleXPCNotificationDeviceStateChanged:(id)arg1;
- (void)handleXPCNotification:(id)arg1;
@property(copy) NSDictionary *uiWindowProperties;
- (void)setName:(id)arg1;
@property(readonly, copy) NSString *name;
- (void)setState:(unsigned long long)arg1;
@property(readonly) unsigned long long state;
- (id)stateString;
- (BOOL)unregisterNotificationHandler:(unsigned long long)arg1 error:(id *)arg2;
- (unsigned long long)registerNotificationHandlerOnQueue:(id)arg1 handler:(CDUnknownBlockType)arg2;
- (unsigned long long)registerNotificationHandler:(CDUnknownBlockType)arg1;
- (void)simulateMemoryWarning;
- (id)memoryWarningFilePath;
@property(readonly, copy) NSString *logPath;
- (id)dataPath;
- (id)devicePath;
- (id)environment;
- (int)_spawnFromSelfWithPath:(id)arg1 options:(id)arg2 terminationHandler:(CDUnknownBlockType)arg3 error:(id *)arg4;
- (int)_spawnFromLaunchdWithPath:(id)arg1 options:(id)arg2 terminationHandler:(CDUnknownBlockType)arg3 error:(id *)arg4;
- (int)spawnWithPath:(id)arg1 options:(id)arg2 terminationHandler:(CDUnknownBlockType)arg3 error:(id *)arg4;
- (void)spawnAsyncWithPath:(id)arg1 options:(id)arg2 terminationHandler:(CDUnknownBlockType)arg3 completionHandler:(CDUnknownBlockType)arg4;
- (BOOL)registerPort:(unsigned int)arg1 service:(id)arg2 error:(id *)arg3;
- (unsigned int)lookup:(id)arg1 error:(id *)arg2;
- (unsigned int)_lookup:(id)arg1 error:(id *)arg2;
- (id)getenv:(id)arg1 error:(id *)arg2;
- (BOOL)restoreContentsAndSettingsFromDevice:(id)arg1 error:(id *)arg2;
- (void)restoreContentsAndSettingsAsyncFromDevice:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (BOOL)updateUIWindowProperties:(id)arg1 error:(id *)arg2;
- (void)updateAsyncUIWindowProperties:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (void)_sendUIWindowPropertiesToDevice;
- (BOOL)eraseContentsAndSettingsWithError:(id *)arg1;
- (void)eraseContentsAndSettingsAsyncWithCompletionHandler:(CDUnknownBlockType)arg1;
- (BOOL)upgradeToRuntime:(id)arg1 error:(id *)arg2;
- (void)upgradeAsyncToRuntime:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (BOOL)rename:(id)arg1 error:(id *)arg2;
- (void)renameAsync:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (BOOL)shutdownWithError:(id *)arg1;
- (BOOL)_shutdownWithError:(id *)arg1;
- (void)shutdownAsyncWithCompletionHandler:(CDUnknownBlockType)arg1;
- (BOOL)bootWithOptions:(id)arg1 error:(id *)arg2;
- (void)bootAsyncWithOptions:(id)arg1 completionHandler:(CDUnknownBlockType)arg2;
- (void)launchdDeathHandlerWithDeathPort:(id)arg1;
- (BOOL)startLaunchdWithDeathPort:(id)arg1 deathHandler:(CDUnknownBlockType)arg2 error:(id *)arg3;
- (void)registerPortsWithLaunchd;
@property(readonly) NSArray *launchDaemonsPaths;
- (BOOL)removeLaunchdJobWithError:(id *)arg1;
- (BOOL)createLaunchdJobWithError:(id *)arg1 extraEnvironment:(id)arg2 disabledJobs:(id)arg3;
- (BOOL)clearTmpWithError:(id *)arg1;
- (BOOL)ensureLogPathsWithError:(id *)arg1;
- (BOOL)supportsFeature:(id)arg1;
@property(readonly, copy) NSString *launchdJobName;
- (void)saveToDisk;
- (id)saveStateDict;
- (void)validateAndFixState;
@property(readonly, copy) NSString *descriptiveName;
- (id)description;
- (void)dealloc;
- (id)initDevice:(id)arg1 UDID:(id)arg2 deviceType:(id)arg3 runtime:(id)arg4 state:(unsigned long long)arg5 connectionManager:(id)arg6 setPath:(id)arg7;

@end

@interface NSString (cputype)
+ (id)stringForCPUType:(int)arg1;
- (int)cputype;
@end

@interface NSArray (argv)
- (void)freeArgv:(char **)arg1;
- (char **)argv;
@end

@interface NSDictionary (envp)
- (void)freeEnvp:(char **)arg1;
- (char **)envp;
@end

@interface NSUserDefaults (SimDefaults)
+ (id)simulatorDefaults;
@end

@interface NSError (SimError)
+ (id)errorFromXPCDict:(id)arg1;
+ (id)errorWithLaunchdError:(int)arg1 userInfo:(id)arg2;
+ (id)errorWithLaunchdError:(int)arg1 localizedDescription:(id)arg2;
+ (id)errorWithLaunchdError:(int)arg1;
+ (id)errorWithSimErrno:(int)arg1 localizedDescription:(id)arg2;
+ (id)errorWithSimErrno:(int)arg1 userInfo:(id)arg2;
+ (id)errorWithSimErrno:(int)arg1;
- (id)xpcDict;
@end

