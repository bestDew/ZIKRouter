//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_productName___.h"
#import <ZIKRouter/ZIKRouterInternal.h>
#import <ZIKRouter/ZIKViewRouterInternal.h>
#import "___VARIABLE_destinationClass___.h"
#import "___VARIABLE_protocolName___.h"

DeclareRoutableView(___VARIABLE_destinationClass___, ___VARIABLE_productName___)

@interface ___VARIABLE_productName___ ()

@end

@implementation ___VARIABLE_productName___

+ (void)registerRoutableDestination {
    [self registerExclusiveView:[___VARIABLE_destinationClass___ class]];
    [self registerViewProtocol:ZIKRoutable(___VARIABLE_protocolName___)];
}

- (nullable ___VARIABLE_destinationClass___ *)destinationWithConfiguration:(ZIKViewRouteConfiguration *)configuration {
#error TODO: instantiate destination
    // Instantiate destination with configuration. Return nil if configuration is invalid.
    ___VARIABLE_destinationClass___ *destination = [[___VARIABLE_destinationClass___ alloc] init];
    
    return destination;
}

- (void)prepareDestination:(___VARIABLE_destinationClass___ *)destination configuration:(ZIKViewRouteConfiguration *)configuration {
    // Prepare destination
}

/*
// If the destiantion is UIView / NSView, override and return route types for UIView / NSView
+ (ZIKViewRouteTypeMask)supportedRouteTypes {
    return ZIKViewRouteTypeMaskViewDefault;
}
 */

@end
