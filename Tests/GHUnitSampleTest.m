//
//  GHUnitSampleTest.m
//  GHUnitProject
//
//  Created by 朱慧平 on 16/5/27.
//  Copyright © 2016年 朱慧平. All rights reserved.
////学习自以下网站
//http://blog.csdn.net/sirodeng/article/details/8236348

#import "GHUnitSampleTest.h"

@implementation GHUnitSampleTest
- (void)testStrings
{
    NSString *string1 = @"a string";
    GHTestLog(@"I can log to the GHUnit test console: %@", string1);
    // Assert string1 is not NULL, with no custom error description
//    GHAssertNotNULL(string1, nil);
    // Assert equal objects, add custom error description
    NSString *string2 = @"a string";
    GHAssertEqualObjects(string1, string2, @"A custom error message. string1 should be equal to: %@.", string2);
}
- (void)testSimpleFail
{
    GHAssertTrue(NO, nil);
}
@end
