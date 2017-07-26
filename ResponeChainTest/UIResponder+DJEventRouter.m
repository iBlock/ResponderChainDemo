//
//  UIResponder+DJEventRouter.m
//  ResponeChainTest
//
//  Created by iBlock on 2017/7/26.
//  Copyright © 2017年 iBlock. All rights reserved.
//

#import "UIResponder+DJEventRouter.h"

@implementation UIResponder (DJEventRouter)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}

@end
