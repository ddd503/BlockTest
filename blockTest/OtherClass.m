//
//  OtherClass.m
//  blockTest
//
//  Created by kawaharadai on 2017/10/16.
//  Copyright © 2017年 dai kawahara. All rights reserved.
//

#import "OtherClass.h"

@implementation OtherClass

+ (void)doSomeWorkWith:(int)inputNumber
               handler:(CallbackHandler)handler {
    // 何らかの処理を行います。
    int resultNumber = inputNumber * 50;
    
    // コールバックが指定されている場合にはそれを呼び出す。
    if (handler) {
        handler(resultNumber);
    }
}

@end
