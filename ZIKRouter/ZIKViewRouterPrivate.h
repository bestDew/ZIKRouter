//
//  ZIKViewRouterPrivate.h
//  ZIKRouter
//
//  Created by zuik on 2017/10/21.
//  Copyright © 2017 zuik. All rights reserved.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "ZIKViewRouter.h"

NS_ASSUME_NONNULL_BEGIN

extern NSNotificationName kZIKViewRouterRegisterCompleteNotification;
typedef  BOOL(^ZIKViewClassValidater)(Class viewClass);

///Private methods.
@interface ZIKViewRouter ()

///Is auto registration all finished.
+ (BOOL)_isLoadFinished;

///Validate all registered view classes of this router class, return the class when the validater return false. Only available when ZIKVIEWROUTER_CHECK is true.
+ (_Nullable Class)validateRegisteredViewClasses:(ZIKViewClassValidater)handler;

@end

///Private method for ZIKRouterSwift.
extern _Nullable Class _Swift_ZIKViewRouterForView(id viewProtocol);
///Private method for ZIKRouterSwift.
extern _Nullable Class _Swift_ZIKViewRouterForConfig(id configProtocol);

NS_ASSUME_NONNULL_END
