@import XCTest;

// This import should fail!
#import <EmptyPublicHeaderFilesPOC/XXXPrivateClass.h>

@interface ExampleTestCase : XCTestCase

@end

@implementation ExampleTestCase

- (void)testPrivateThing {
    // It shouldn't be possible to refernce a private class.
    XCTAssertNil([XXXPrivateClass class]);
}

@end