//
//  OtherClass.h
//  blockTest
//
//  Created by kawaharadai on 2017/10/16.
//  Copyright © 2017年 dai kawahara. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CallbackHandler)(int result);

@interface OtherClass : NSObject

+ (void)doSomeWorkWith:(int)inputNumber
               handler:(CallbackHandler)handler;

@end
