//
//  AddingTwoNumbersTests.m
//  AddingTwoNumbersTests
//
//  Created by Mariusz Sikora on 11/09/15.
//  Copyright (c) 2015 Mariusz Sikora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RSAddition.h"

@interface AddingTwoNumbersTests : XCTestCase

@end

@implementation AddingTwoNumbersTests
{
    RSAddition *addition;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    addition = [[RSAddition alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testAdditionClassExists {
    XCTAssertNotNil(addition, @"RSAddition class exists");
}

- (void)testAddTwoPlusTwo {
    NSInteger result = [addition addNumberOne:2 withNumberTwo:2];
    XCTAssertEqual(result, 4, @"Addition 2 + 2 is 4");
}

- (void)testAddTwoPlusSeven {
    NSInteger result = [addition addNumberOne:2 withNumberTwo:7];
    XCTAssertEqual(result, 9, @"Addition 2 + 7 is 9");
}

- (void)testAddOnePlusTwo {
    NSInteger result = [addition addNumberOne:1 withNumberTwo:2];
    XCTAssertEqual(result, 3, @"Addition 1 + 2 is 3");
}

- (void)testGetValue {
    NSInteger result = [addition getValue];
    XCTAssertEqual(result, 4, @"return 4");
}

- (void)testGetName {
    NSString *name = [addition getName];
    XCTAssertTrue([name isEqualToString:@"TestUTPass"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
