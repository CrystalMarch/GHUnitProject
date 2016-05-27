//
//  OCMockSampleTest.m
//  GHUnitProject
//
//  Created by 朱慧平 on 16/5/27.
//  Copyright © 2016年 朱慧平. All rights reserved.
//学习自以下网站
//http://blog.csdn.net/sirodeng/article/details/8236348
#import "OCMockSampleTest.h"
#import <OCMock.h>
@implementation OCMockSampleTest
- (void)testOCMockPass
{
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mocktest", returnValue,
                         @"Should have returned the expected string.");
}
- (void)testOCMockFail
{
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"thisIsTheWrongValueToCheck",
                         returnValue, @"Should have returned the expected string.");
}
@end
