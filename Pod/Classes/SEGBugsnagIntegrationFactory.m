#import "SEGBugsnagIntegrationFactory.h"
#import "SEGBugsnagIntegration.h"


@implementation SEGCrittercismIntegrationFactory

+ (id)instance
{
    static dispatch_once_t once;
    static SEGBugsnagIntegration *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[SEGBugsnagIntegration alloc] initWithSettings:settings];
}

- (NSString *)key
{
    return @"Crittercism";
}

@end
