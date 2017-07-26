//
//  UIResponder+DJEventRouter.h
//  ResponeChainTest
//
//  Created by iBlock on 2017/7/26.
//  Copyright © 2017年 iBlock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (DJEventRouter)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end
