//
//  XCTestCaseMemoryLeakTrackingHelper.swift
//  EssentialFeed
//
//  Created by Artak Martirosyan on 21.12.25.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject,
                             file: StaticString = #file,
                             line: UInt = #line) {
        addTeardownBlock  { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated", file: file, line: line)
        }
    }
}
